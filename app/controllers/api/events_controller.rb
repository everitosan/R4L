module API
  class EventsController < ApiController
    def index
      gIndex(Event)
    end

    def create
      event = Event.new(event_params)
      respond_to do |format|
        if event.save
          user = User.find(params[:event][:user_id])
          user.events << event
          format.json {render json: event, status: :created}
        else
          format.json {render json: event.errors, status: 400}
        end
      end
    end

    def show
      gShow(Event)
    end

    def update
      gUpdate(Event, event_params)
    end

    def destroy
      gDestroy(Event)
    end

    private
      def event_params
        params.require(:event).permit(:user_id, :name, :info, :dateHour)
      end
  end
end
