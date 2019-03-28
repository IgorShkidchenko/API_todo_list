module Docs
  module V1
    module Projects
      extend Dox::DSL::Syntax

      document :api do
        resource 'Projects' do
          endpoint '/projects'
          group 'Projects'
        end
      end

      document :index do
        action 'Get projects' do
          path '/api/v1/projects'
          verb 'GET'
        end
      end

      document :show do
        action 'Get project' do
          path '/api/v1/projects/:id'
          verb 'GET'
          params id: { type: :integer, required: :required, value: 1 }
        end
      end

      document :create do
        action 'Create a project' do
          path '/api/v1/projects'
          verb 'POST'
          params name: { type: :string, required: :required, value: 'New_project_name' }
        end
      end

      document :update do
        action 'Update a project' do
          path '/api/v1/projects/:id'
          verb 'PUT'
          params id: { type: :integer, required: :required, value: 1 },
                 name: { type: :string, required: :required, value: 'New project name' }
        end
      end

      document :destroy do
        action 'Delete a project' do
          path '/api/v1/projects/:id'
          verb 'DELETE'
          params id: { type: :integer, required: :required, value: 1 }
        end
      end
    end
  end
end
