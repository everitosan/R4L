module API
  class PaymentsController < ApiController
    def index
      gIndex(Payment)
    end

    def create
      gCreate(Payment, payment_params)
    end

    def show
      gShow(Payment)
    end

    def update
      gUpdate(Payment, payment_params)
    end

    def destroy
      gDestroy(Payment)
    end

    private
      def payment_params
        params.require(:payment).permit(:user_id, :payment_transaction, :method, :amount)
      end
  end
end
