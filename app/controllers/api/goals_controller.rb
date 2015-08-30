module API
  class GoalsController < ApiController
    def index
      gIndex(Goal)
    end

    def create
      gCreate(Goal, goal_params)
    end

    def show
      gShow(Goal)
    end

    def update
      gUpdate(Goal, goal_params)
    end

    def destroy
      gDestroy(Goal)
    end

    private
      def goal_params
        params.require(:goal).permit(:user_id, :goal_category_id, :start, :current, :desire)
      end
  end
end
