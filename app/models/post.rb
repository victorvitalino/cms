class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :post_category

  validates_presence_of :post_category, :title, :content
end
