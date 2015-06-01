class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :post_category


  validates_presence_of :post_category, :title, :content

  mount_uploader :thumb, ThumbUploader

  mount_uploader :slider, SliderUploader
  
end
