class HomeController < ApplicationController
  def index
  end

  def professionals
    u = User.where(role: 'Pro')
    respond_to do |format|
      format.json {render json: u, status: :ok }
    end
  end
end
