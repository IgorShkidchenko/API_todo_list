module Docs
  module V1
    module Users
      extend Dox::DSL::Syntax

      document :api do
        resource 'Users' do
          endpoint '/users'
          group 'Users'
        end
      end

      document :create do
        action 'Create a user' do
          path '/api/v1/sign_up'
          verb 'POST'
          params email: { type: :string, required: :required, value: 'user@example.com' },
                 password: { type: :string, required: :required, value: 'password' },
                 password_confirmation: { type: :string, required: :required, value: 'password' }
        end
      end
    end
  end
end
