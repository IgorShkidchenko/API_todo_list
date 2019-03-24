module Api
  module V1
    class ApiController < ApplicationController
      include JWTSessions::RailsAuthorization
      include Pundit
      include Concerns::ExceptionsHandler
      include Concerns::ResourceLoaderAndAuthorizer

      private

      def current_user
        @current_user ||= User.find(payload['user_id'])
      end
    end
  end
end
