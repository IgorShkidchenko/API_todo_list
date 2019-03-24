module Docs
  module V1
    module Comments
      extend Dox::DSL::Syntax

      document :api do
        resource 'Comments' do
          endpoint '/comments'
          group 'Comments'
        end
      end

      document :index do
        action 'Get comments' do
          path '/api/v1/tasks/:task_id/comments'
          verb 'GET'
          params task_id: { type: :integer, required: :required, value: 1 }
        end
      end

      document :create do
        action 'Create a comment' do
          path '/api/v1/tasks/:task_id/comments'
          verb 'POST'
          params task_id: { type: :integer, required: :required, value: 1 },
                 body: { type: :string, required: :required, value: 'New_comment_body' },
                 image: { type: :string, value: 'https://account.s3.us-east-2.amazonaws.com/uploads/image.jpg' }
        end
      end

      document :destroy do
        action 'Delete a comment' do
          path '/api/v1/comments/:id'
          verb 'DELETE'
          params id: { type: :integer, required: :required, value: 1 }
        end
      end
    end
  end
end
