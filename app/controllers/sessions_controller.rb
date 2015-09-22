class SessionsController < ApplicationController
  def new
    @identity = Identity.new
  end

  def create
    logger.debug "*"*50
    logger.debug params['identity']['email']
    logger.debug params['identity']['password']
    logger.debug "*"*50

    warden.authenticate!(scope: :identity)
    redirect_to root_url, notice: t('.logged_in')
  end

  def destroy
    warden.logout(:identity)
    redirect_to root_url, notice: t('.logged_out')
  end
end
