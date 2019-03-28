module Api
  module V1
    class ApiController < ApplicationController
      include Pundit
      include JWTSessions::RailsAuthorization
      include Concerns::ExceptionsHandler

      private

      def current_user
        @current_user ||= User.find(payload['user_id'])
      end
    end
  end
end
