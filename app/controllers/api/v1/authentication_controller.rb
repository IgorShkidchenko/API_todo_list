module Api
  module V1
    class AuthenticationController < ApiController
      include Concerns::TokensInCookieRenderer
      before_action :authorize_access_request!, only: :destroy
      before_action :authorize_refresh_by_access_request!, only: :update

      def create
        user = Users::FindService.call(params)
        @tokens = Tokens::LoginService.call(user)
        render_tokens_in_cookie
      end

      def update
        @tokens = Tokens::RefreshService.call(claimless_payload)
        render_tokens_in_cookie
      end

      def destroy
        JWTSessions::Session.new(payload: payload).flush_by_access_payload
        render json: :ok
      end
    end
  end
end
