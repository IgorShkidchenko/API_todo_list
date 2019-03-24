module Docs
  module V1
    module Tasks
      extend Dox::DSL::Syntax

      document :api do
        resource 'Tasks' do
          endpoint '/tasks'
          group 'Tasks'
        end
      end

      document :index do
        action 'Get tasks' do
          path '/api/v1/projects/:project_id/tasks'
          verb 'GET'
          params project_id: { type: :integer, required: :required, value: 1 }
        end
      end

      document :show do
        action 'Get task' do
          path '/api/v1/tasks/:id'
          verb 'GET'
          params id: { type: :integer, required: :required, value: 1 }
        end
      end

      document :create do
        action 'Create a task' do
          path '/api/v1/projects/:project_id/tasks'
          verb 'POST'
          params project_id: { type: :integer, required: :required, value: 1 },
                 name: { type: :string, required: :required, value: 'New_task_name' },
                 deadline: { type: :datetime, value: (Time.now + 1.week) },
                 complete: { type: :boolean, value: false },
                 position: { type: :integer, required: :required, value: 1 }
        end
      end

      document :update do
        action 'Update a task' do
          path '/api/v1/tasks/:id'
          verb 'PUT'
          params id: { type: :integer, required: :required, value: 1 },
                 name: { type: :string, required: :required, value: 'New_task_name' },
                 deadline: { type: :datetime, value: (Time.now + 1.week) }
        end
      end

      document :complete do
        action 'Complete a task' do
          path '/api/v1/tasks/:id/complete'
          verb 'PATCH'
          params id: { type: :integer, required: :required, value: 1 },
                 complete: { type: :boolean, value: true }
        end
      end

      document :position do
        action 'Change position of task' do
          path '/api/v1/tasks/:id/position'
          verb 'PATCH'
          params id: { type: :integer, required: :required, value: 1 },
                 position: { type: :integer, required: :required, value: 1 }
        end
      end

      document :destroy do
        action 'Delete a task' do
          path '/api/v1/tasks/:id'
          verb 'DELETE'
          params id: { type: :integer, required: :required, value: 1 }
        end
      end
    end
  end
end
