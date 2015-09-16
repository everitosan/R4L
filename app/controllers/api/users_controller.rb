module API
  class UsersController < ApiController

    def index
      gIndex(User)
    end

    def create
      gCreate(User, user_params)
    end

    def show

      @user = User.includes(:groups).find(params[:id])
      @userResponse  =  {
        :name =>@user.name,
        :picProfile => @user.picProfile,
        :groups => @user.groups,
        :events => @user.events
      }.to_json

      respond_to do |format|
        format.json { render json: @userResponse, status: :ok}
      end
    end

    def update
      gUpdate(User, user_params)
    end

    def destroy
      gDestroy(User)
    end

    private
      def user_params
        params.require(:user).permit(:name, :age, :email, :address, :zipCode, :country, :telephone, :password)
      end
  end
end
