require 'rails_helper'

RSpec.describe 'Users', type: :request do
  include Docs::V1::Users::Api

  describe 'POST /sign_up' do
    include Docs::V1::Users::Create

    let(:attritubes) { attributes_for(:user) }

    before { post api_v1_users_path, params: params }

    context 'with valid params' do
      let(:params) { { user: attritubes.merge(password_confirmation: attritubes[:password]) } }

      it 'when success', :dox do
        expect(response).to have_http_status 200
      end
      it { expect(response).to match_response_schema('tokens/csrf') }
      it { expect(response.cookies[JWTSessions.access_cookie]).to be_present }
    end

    context 'with invalid params' do
      let(:params) { { user: attritubes.merge(password_confirmation: attritubes[:password].succ) } }

      it 'when not created', :dox do
        expect(response).to have_http_status 422
      end
      it { expect(response.cookies[JWTSessions.access_cookie]).not_to be_present }
    end
  end
end
