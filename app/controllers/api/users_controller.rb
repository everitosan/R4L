module API
  class UsersController < ApplicationController
  before_action :getUser, only:[:show, :update, :destroy]
    def getUser
      @user = User.find(params[:id])
    end

    def index
      @users = User.all
      respond_to do |format|
        format.json {render json:@users, status: :ok}
      end
    end

    def create
      user = User.new(user_params)
      respond_to do |format|
        if user.save
          format.json { render json: user, status: :created }
        else
          format.json { render json: user.errors, status: 400}
        end
      end
    end

    def show
      respond_to do |format|
        format.json {render json: @user, status: :ok}
      end
    end

    def update
      respond_to do |format|
        if @user.update(user_params)
          format.json {render json:@user, status: :ok }
        else
          format.json {render json:@user.errors, status: 400}
        end
      end
    end

    def destroy
      if @user.destroy
        head 204
      else
        head 400
      end
    end

    private
      def user_params
        params.require(:user).permit(:name, :age, :email, :address, :zipCode, :country, :telephone, :password)
      end
  end
end
