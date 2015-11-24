module Strategies
  class DatabaseAuthentication < ::Warden::Strategies::Base
    def valid?
      Rails.logger.info "--- VALID ---"
      params['identity'].present?
    end

    def authenticate!
      Rails.logger.info "--- AUTHENTICATE ---"
      identity = Identity.find_by_email(params['identity']['email']).try(:authenticate, params['identity']['password'])
      return success! identity if identity
      return fail!
    end
  end
end

Warden::Strategies.add(:database_authentication, Strategies::DatabaseAuthentication)
