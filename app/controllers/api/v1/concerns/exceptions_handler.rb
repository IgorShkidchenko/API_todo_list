module Api::V1::Concerns
  module ExceptionsHandler
    extend ActiveSupport::Concern

    included do
      rescue_from JWTSessions::Errors::Unauthorized, with: :render_unauthorized
      rescue_from Pundit::NotAuthorizedError, with: :render_forbidden
      rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
      rescue_from ActiveRecord::RecordInvalid, ActiveRecord::RecordNotDestroyed, with: :render_unprocessable_entity
    end

    private

    def render_unauthorized
      render json: { error: I18n.t('jwt.unauthorized_error') }, status: :unauthorized
    end

    def render_forbidden
      render json: { error: I18n.t('pundit.forbidden_error') }, status: :forbidden
    end

    def render_unprocessable_entity(exception)
      render json: { error:  exception.record.errors }, status: :unprocessable_entity
    end

    def render_not_found(exception)
      render json: { error: exception.message }, status: :not_found
    end
  end
end
