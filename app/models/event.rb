class Event < ActiveRecord::Base

  belongs_to :user
  has_and_belongs_to_many :users

  belongs_to :post_category

  validates :name,
            presence: true
  validates :dateHour,
            presence: true
  validates :user,
            presence: true
end
