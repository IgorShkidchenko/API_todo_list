module Api::V1::Concerns
  module TokensInCookieRenderer
    extend ActiveSupport::Concern

    included do
      def render_tokens_in_cookie
        response.set_cookie(JWTSessions.access_cookie, cookies_value_as_hash)
        render json: { csrf: @tokens[:csrf] }, status: :ok
      end
    end

    private

    def cookies_value_as_hash
      { value: @tokens[:access], httponly: true, secure: Rails.env.production? }
    end
  end
end
