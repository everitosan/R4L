require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  test "payment" do
    payment = payments(:allan_payment)
    assert payment.valid?, "payment is not valid"
  end
end
