module Api
  module V1
    class UsersController < ApiController
      include Concerns::TokensInCookieRenderer

      def create
        @user = Users::CreateService.call(user_params)
        @tokens = Tokens::LoginService.call(@user)
        render_tokens_in_cookie
      end

      private

      def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
      end
    end
  end
end
