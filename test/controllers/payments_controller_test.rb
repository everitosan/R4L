require 'test_helper'

class PaymentsControllerTest < ActionController::TestCase
  setup do
    @controller = API::PaymentsController.new
    @request.headers["Accept"] = "application/json"
    @user = users(:Gabo)
    @payment = payments(:allan_payment)
  end

  test "gets all payments" do
    get :index

    assert_equal Mime::JSON, response.content_type
    assert_equal 200, response.status

  end

  test "create a payment" do
    param = {
      payment: {
        user_id: @user.id,
        payment_transaction: 3345,
        method: "oxxo",
        amount: 303.33
      }
    }

    post :create,
    param

    assert_equal Mime::JSON, response.content_type
    assert_equal 201, response.status
  end

  test "get a payment" do
    get :show,
    :id => @payment.id

    statisticResponse = json(response.body)
    assert_equal 200, response.status
    assert_equal @payment.amount, statisticResponse[:amount]
    assert_equal Mime::JSON, response.content_type
  end

  test "update a payment" do
    put :update,
    :id => @payment.id,
    :payment => {:method => "deposit" }

    assert_equal 200, response.status
    assert_equal "deposit", @payment.reload.method
  end

  test "delete a payment" do
    delete :destroy,
    :id => @payment.id

    assert_equal 204, response.status
  end
end
