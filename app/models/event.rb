class Event < ActiveRecord::Base

  #has_many :meetings
  #has_many :users, through: :meetings
  belongs_to :user

  validates :name,
            presence: true
  validates :dateHour,
            presence: true
  validates :user,
            presence: true
end
