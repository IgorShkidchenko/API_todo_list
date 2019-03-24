require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  include Docs::V1::Projects::Api

  let!(:project) { create(:project) }
  let(:project_id) { project.id }
  let(:valid_attributes) { { project: attributes_for(:project) } }
  let(:invalid_attributes) { { project: { name: nil } } }

  let(:user_id) { project.user.id }
  let(:tokens) { JWTSessions::Session.new(payload: { user_id: user_id }).login }
  let(:headers_data) do
    { 'HTTP_COOKIE': "#{JWTSessions.access_cookie}=#{tokens[:access]}", JWTSessions.csrf_header => tokens[:csrf] }
  end

  describe 'when GET /projects' do
    include Docs::V1::Projects::Index

    before { get api_v1_projects_path, headers: headers_data }

    context 'when returns projects' do
      it 'when success', :dox do
        expect(response).to have_http_status 200
      end
      it { expect(response).to match_response_schema('projects/index') }
    end
  end

  describe 'when GET /projects/:id' do
    include Docs::V1::Projects::Show

    before { get api_v1_project_path(project_id), headers: headers_data }

    context 'when return project' do
      it 'when success', :dox do
        expect(response).to have_http_status 200
      end
      it { expect(response).to match_response_schema('projects/one_project') }
    end

    context 'when return 404' do
      let(:project_id) { project.id.succ }

      it 'when not found', :dox do
        expect(response).to have_http_status 404
      end
    end
  end

  describe 'when POST /projects' do
    include Docs::V1::Projects::Create

    before { post api_v1_projects_path, params: params, headers: headers_data }

    context 'when create a project' do
      let(:params) { valid_attributes }

      it 'when success', :dox do
        expect(response).to have_http_status 201
      end
      it { expect(response).to match_response_schema('projects/one_project') }
    end

    context 'when return 422' do
      let(:params) { invalid_attributes }

      it 'when not created', :dox do
        expect(response).to have_http_status 422
      end
    end
  end

  describe 'when PUT /projects/:id' do
    include Docs::V1::Projects::Update

    before { put api_v1_project_path(project_id), params: params, headers: headers_data }

    context 'when update a project' do
      let(:params) { valid_attributes }

      it 'when success', :dox do
        expect(response).to have_http_status 201
      end
      it { expect(response).to match_response_schema('projects/one_project') }
    end

    context 'when return 422' do
      let(:params) { invalid_attributes }

      it 'when not updated', :dox do
        expect(response).to have_http_status 422
      end
    end

    context 'when return 422' do
      let(:params) { invalid_attributes }
      let(:project_id) { project.id.succ }

      it 'when not found', :dox do
        expect(response).to have_http_status 404
      end
    end
  end

  describe 'when DELETE /projects/:id' do
    include Docs::V1::Projects::Destroy

    before { delete api_v1_project_path(project_id), headers: headers_data }

    context 'when return 204' do
      it 'when delete a project ', :dox do
        expect(response).to have_http_status 204
      end
    end

    context 'when return 404' do
      let(:project_id) { project.id.succ }

      it 'when not found', :dox do
        expect(response).to have_http_status 404
      end
    end
  end

  describe 'when raise Pundit Access Denied error' do
    let(:user) { create(:user) }
    let(:tokens) { JWTSessions::Session.new(payload: { user_id: user.id }).login }
    let(:headers_data) do
      { 'HTTP_COOKIE': "#{JWTSessions.access_cookie}=#{tokens[:access]}", JWTSessions.csrf_header => tokens[:csrf] }
    end

    it 'when return 403' do
      delete api_v1_project_path(project_id), headers: headers_data
      expect(response).to have_http_status 403
    end
  end
end
