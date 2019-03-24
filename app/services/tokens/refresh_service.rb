class Tokens::RefreshService < ApplicationService
  def initialize(claimless_payload)
    @claimless_payload = claimless_payload
  end

  def call
    session = JWTSessions::Session.new(payload: @claimless_payload, refresh_by_access_allowed: true)
    session.refresh_by_access_payload do
      raise JWTSessions::Errors::Unauthorized
    end
  end
end
