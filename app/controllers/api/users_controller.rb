module API
  class UsersController < ApiController

    def index
      gIndex(User)
    end

    def create
      gCreate(User, user_params)
    end

    def show
      gShow(User)
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
