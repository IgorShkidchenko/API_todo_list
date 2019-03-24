require 'rails_helper'

RSpec.describe 'Tasks', type: :request do
  include Docs::V1::Tasks::Api

  let!(:project) { create(:project, :with_task) }
  let(:project_id) { project.id }
  let(:task_id) { project.tasks.last.id }
  let(:valid_attributes) { { task: attributes_for(:task) } }
  let(:invalid_attributes) { { task: { name: nil } } }

  let(:user_id) { project.user.id }
  let(:tokens) { JWTSessions::Session.new(payload: { user_id: user_id }).login }
  let(:headers_data) do
    { 'HTTP_COOKIE': "#{JWTSessions.access_cookie}=#{tokens[:access]}", JWTSessions.csrf_header => tokens[:csrf] }
  end

  describe 'when GET /projects/:project_id/tasks' do
    include Docs::V1::Tasks::Index

    before { get api_v1_project_tasks_path(project_id), headers: headers_data }

    context 'when returns tasks of project' do
      it 'when success', :dox do
        expect(response).to have_http_status 200
      end
      it { expect(response).to match_response_schema('tasks/index') }
    end
  end

  describe 'when GET /projects/:project_id/tasks/:id' do
    include Docs::V1::Tasks::Show

    before { get api_v1_task_path(task_id), headers: headers_data }

    context 'when return task' do
      it 'when success', :dox do
        expect(response).to have_http_status 200
      end
      it { expect(response).to match_response_schema('tasks/one_task') }
    end

    context 'when return 404' do
      let(:task_id) { project.tasks.last.id.succ }

      it 'when not found', :dox do
        expect(response).to have_http_status 404
      end
    end
  end

  describe 'when POST /projects/:project_id/tasks' do
    include Docs::V1::Tasks::Create

    before { post api_v1_project_tasks_path(project_id), params: params, headers: headers_data }

    context 'when create a task' do
      let(:params) { valid_attributes }

      it 'when success', :dox do
        expect(response).to have_http_status 201
      end
      it { expect(response).to match_response_schema('tasks/one_task') }
    end

    context 'when return 422' do
      let(:params) { invalid_attributes }

      it 'when not created', :dox do
        expect(response).to have_http_status 422
      end
    end
  end

  describe 'when PUT /task/:id' do
    include Docs::V1::Tasks::Update
    include Docs::V1::Tasks::Complete
    include Docs::V1::Tasks::Position

    before { put api_v1_task_path(task_id), params: params, headers: headers_data }

    context 'when update a task' do
      let(:params) { valid_attributes }

      it 'when success', :dox do
        expect(response).to have_http_status 201
      end
      it { expect(response).to match_response_schema('tasks/one_task') }
    end

    context 'when return 422' do
      let(:params) { invalid_attributes }

      it 'when not updated', :dox do
        expect(response).to have_http_status 422
      end
    end

    context 'when return 422' do
      let(:params) { invalid_attributes }
      let(:task_id) { project.tasks.last.id.succ }

      it 'when not found', :dox do
        expect(response).to have_http_status 404
      end
    end
  end

  describe 'when DELETE /task/:id' do
    include Docs::V1::Tasks::Destroy

    before { delete api_v1_task_path(task_id), headers: headers_data }

    context 'when return 204' do
      it 'when delete a task ', :dox do
        expect(response).to have_http_status 204
      end
    end

    context 'when return 404' do
      let(:task_id) { project.tasks.last.id.succ }

      it 'when not found', :dox do
        expect(response).to have_http_status 404
      end
    end
  end
end
