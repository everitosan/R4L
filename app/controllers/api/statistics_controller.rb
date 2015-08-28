module API
  class StatisticsController < ApiController
    def index
      gIndex(Statistic)
    end

    def create
      gCreate(Statistic, statistic_params)
    end

    def show
      gShow(Statistic)
    end

    def update
      gUpdate(Statistic, statistic_params)
    end

    def destroy
      gDestroy(Statistic)
    end

    private
      def statistic_params
        params.require(:statistic).permit(:user_id, :goal_category_id, :quantity)
      end
  end
end
