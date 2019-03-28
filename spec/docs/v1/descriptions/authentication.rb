module Docs
  module V1
    module Authentication
      extend Dox::DSL::Syntax

      document :api do
        resource 'Authentication' do
          endpoint '/auth'
          group 'Authentication'
        end
      end

      document :create do
        action 'Create a session' do
          path '/api/v1/sign_in'
          verb 'POST'
        end
      end

      document :update do
        action 'Update a session' do
          path '/api/v1/refresh'
          verb 'POST'
        end
      end

      document :destroy do
        action 'Delete a session' do
          path '/api/v1/sign_out'
          verb 'DELETE'
        end
      end
    end
  end
end
