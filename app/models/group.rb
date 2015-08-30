class Group < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :users


  validates :name,
            presence: true
  validates :user,
            presence: true
end
