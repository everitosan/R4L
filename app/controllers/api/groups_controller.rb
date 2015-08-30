module API
  class GroupsController < ApiController
    def index
      gIndex(Group)
    end

    def create
      group = Group.new(group_params)
      respond_to do |format|
        if group.save
          user = User.find(params[:group][:user_id])
          user.groups << group
          format.json {render json: group, status: :created}
        else
          format.json {render json: group.errors, status: 400}
        end
      end
    end

    def show
      gShow(Group)
    end

    def update
      gUpdate(Group, group_params)
    end

    def destroy
      gDestroy(Group)
    end

    private
      def group_params
        params.require(:group).permit(:user_id, :name, :description)
      end
  end
end
