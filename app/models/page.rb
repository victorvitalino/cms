class Page < ActiveRecord::Base
  belongs_to :page_category

  extend FriendlyId
  
  friendly_id :title, use: :slugged
end
