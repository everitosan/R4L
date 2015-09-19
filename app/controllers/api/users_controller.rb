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
        :projectUrl => "projects/" + @user.personal_project.id.to_s,
        :picProfile => @user.picProfile,
        :weight => @user.last_weight,
        :height => @user.last_height,
        :imc => getIMC(@user.last_height, @user.last_weight),
        :groups => groupify(@user.groups),
        :events => eventify(@user.events)
      }.to_json

      respond_to do |format|
        format.json { render json: @userResponse, status: :ok}
      end
    end

    def getIMC (height, weight)
      return (weight/height**2).to_i
    end

    def groupify (groupList)
      @groups = [];
      groupList.each do |group|
        @groups.push({
          :url => "groups/" + group.id.to_s,
          :image => group.image,
          :name => group.name
          });
      end
      return @groups
    end

    def eventify (eventList)
      @newEventList = [];
      eventList.each do |event|
        @newEventList.push({
          :url => "groups/" + event.id.to_s,
          :name => event.name,
          :date => event.dateHour,
          :category => event.post_category.name
          })
      end
      return @newEventList
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
