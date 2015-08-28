class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :post_context
  belongs_to :post_category

  validates :user,
            presence: true
  validates :text,
            presence: true
  validates :post_context,
            presence: true
  validates :post_category ,
            presence: true
end
