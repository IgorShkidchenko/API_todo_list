require 'rails_helper'

RSpec.describe 'Authentication', type: :request do
  include Docs::V1::Authentication::Api

  let(:user) { create(:user) }
  let(:access_cookie) { @tokens[:access] }
  let(:csrf_token) { @tokens[:csrf] }
  let(:headers_data) do
    { 'HTTP_COOKIE': "#{JWTSessions.access_cookie}=#{access_cookie}", JWTSessions.csrf_header => csrf_token }
  end

  describe 'POST /sign_in' do
    include Docs::V1::Authentication::Create

    before { post api_v1_sign_in_path, params: params }

    context 'with valid params' do
      let(:params) { { email: user.email, password: user.password } }

      it 'when success', :dox do
        expect(response).to have_http_status 200
      end
      it { expect(response.cookies[JWTSessions.access_cookie]).to be_present }
      it { expect(response).to match_response_schema('tokens/csrf') }
    end

    context 'with invalid email return 404' do
      let(:params) { { email: user.email.succ, password: user.password } }

      it 'when not found', :dox do
        expect(response).to have_http_status 404
      end
      it { expect(response.cookies[JWTSessions.access_cookie]).not_to be_present }
    end

    context 'with invalid password return 401' do
      let(:params) { { email: user.email, password: user.password.succ } }

      it 'when unauthorize', :dox do
        expect(response).to have_http_status 401
      end
      it { expect(response.cookies[JWTSessions.access_cookie]).not_to be_present }
    end
  end

  describe 'POST /refresh' do
    include Docs::V1::Authentication::Update

    context 'when success' do
      before do
        JWTSessions.access_exp_time = 0
        @tokens = JWTSessions::Session.new(payload: { user_id: user.id }, refresh_by_access_allowed: true).login
        JWTSessions.access_exp_time = 3600
        post api_v1_refresh_path, headers: headers_data
      end

      it 'when success', :dox do
        expect(response).to have_http_status 200
      end
      it { expect(response.cookies[JWTSessions.access_cookie]).to be_present }
      it { expect(response).to match_response_schema('tokens/csrf') }
    end

    context 'when failure' do
      before do
        @tokens = JWTSessions::Session.new(payload: { user_id: user.id }, refresh_by_access_allowed: true).login
        post api_v1_refresh_path, headers: headers_data
      end

      it 'when unauthorize', :dox do
        expect(response).to have_http_status 401
      end
    end
  end

  describe 'DELETE /sign_out' do
    include Docs::V1::Authentication::Destroy

    before do
      @tokens = JWTSessions::Session.new(payload: { user_id: user.id }, refresh_by_access_allowed: true).login
      delete api_v1_sign_out_path, headers: headers_data
    end

    it 'when destroy a session', :dox do
      expect(response).to have_http_status 200
    end
  end
end
