Rails.application.routes.draw do
  root 'static_pages#docs'

  namespace :api do
    namespace :v1 do
      post 'sign_up', controller: :users, action: :create
      post 'sign_in', controller: :authentication, action: :create
      post 'refresh', controller: :authentication, action: :update
      delete 'sign_out', controller: :authentication, action: :destroy

      resources :users, only: :create

      resources :projects, except: %i[new edit], shallow: true do
        resources :tasks, except: %i[new edit], shallow: true do
          resources :comments, only: %i[index create destroy]
          member do
            patch '/complete', '/position', controller: :tasks, action: :update
          end
        end
      end
    end
  end
end
