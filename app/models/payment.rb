class Payment < ActiveRecord::Base
  belongs_to :user

  validates :user,
            presence: true
  validates :payment_transaction,
            presence: true
  validates :method,
            presence: true
  validates :amount,
            presence: true,
            numericality: true
end
