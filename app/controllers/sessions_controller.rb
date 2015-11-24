class SessionsController < ApplicationController
  def new

    respond_to do |format|
      if  identity_signed_in?
        format.json {render json: {:valid => 'ok'}, status: :ok }
      else
        format.json {render json: {:valid => 'no'}, status: :ok}
      end

    end
  end

  def create
    
    warden.authenticate!(scope: :identity)
      respond_to do |format|
        format.json {render json: {:valid => 'ok'}, status: :ok }
      end
  end

  def destroy
    warden.logout(:identity)
    redirect_to root_url, notice: t('.logged_out')
  end
end
