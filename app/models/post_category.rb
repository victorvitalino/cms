class PostCategory < ActiveRecord::Base
  has_many :posts  
  scope :enabled, -> { where(status: true)}

  validates :name, presence: true, uniqueness: true

end
