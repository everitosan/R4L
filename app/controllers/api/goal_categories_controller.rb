module API
  class GoalCategoriesController < ApiController
    def index
      gIndex(GoalCategory)
    end

    def create
      gCreate(GoalCategory, goal_categories_params)
    end

    def show
      gShow(GoalCategory)
    end

    def update
      gUpdate(GoalCategory, goal_categories_params)
    end

    def destroy
      gDestroy(GoalCategory)
    end

    private
      def goal_categories_params
        params.require(:goal_category).permit(:name)
      end
  end
end
