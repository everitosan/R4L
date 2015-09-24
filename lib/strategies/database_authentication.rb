module Strategies
  class DatabaseAuthentication < ::Warden::Strategies::Base
    def valid?
      Rails.logger.info "*** VALID ? **************"
      Rails.logger.info "#{params}"

      params['identity'].present?
    end

    def authenticate!
      Rails.logger.info "*****************"
      Rails.logger.info "*****************"

      identity = Identity.find_by_email(params['identity']['email']).try(:authenticate, params['identity']['password'])

      return success! identity if identity
      fail! I18n.t('sessions.create.invalid_credentials')
    end
  end
end

Warden::Strategies.add(:database_authentication, Strategies::DatabaseAuthentication)
