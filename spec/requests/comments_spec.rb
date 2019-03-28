require 'rails_helper'

RSpec.describe 'Comments', type: :request do
  include Docs::V1::Comments::Api

  let!(:task) { create(:task, :with_comment) }
  let(:task_id) { task.id }

  let(:user_id) { task.project.user.id }
  let(:tokens) { JWTSessions::Session.new(payload: { user_id: user_id }).login }
  let(:headers_data) do
    { 'HTTP_COOKIE': "#{JWTSessions.access_cookie}=#{tokens[:access]}", JWTSessions.csrf_header => tokens[:csrf] }
  end

  describe 'when GET /tasks/:task_id/comments' do
    include Docs::V1::Comments::Index

    before { get api_v1_task_comments_path(task_id), headers: headers_data }

    context 'when returns comments of task' do
      it 'when success', :dox do
        expect(response).to have_http_status 200
      end
      it { expect(response).to match_response_schema('comments/index') }
    end
  end

  describe 'when POST /tasks/:task_id/comments' do
    include Docs::V1::Comments::Create

    let(:valid_attributes) { { comment: attributes_for(:comment) } }
    let(:invalid_attributes) { { comment: { body: nil } } }

    before { post api_v1_task_comments_path(task_id), params: params, headers: headers_data }

    context 'when create a comment' do
      let(:params) { valid_attributes }

      it 'when success', :dox do
        expect(response).to have_http_status 201
      end
      it { expect(response).to match_response_schema('comments/one_comment') }
    end

    context 'when return 422 if was not created' do
      let(:params) { invalid_attributes }

      it 'when not created', :dox do
        expect(response).to have_http_status 422
      end
    end
  end

  describe 'when DELETE /comment/:id' do
    include Docs::V1::Comments::Destroy

    before { delete api_v1_comment_path(comment_id), headers: headers_data }

    context 'when return 204' do
      let(:comment_id) { task.comments.last.id }

      it 'when delete a comment ', :dox do
        expect(response).to have_http_status 204
      end
    end

    context 'when return 404' do
      let(:comment_id) { task.comments.last.id.succ }

      it 'when not found', :dox do
        expect(response).to have_http_status 404
      end
    end
  end
end
