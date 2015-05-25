class PageCategory < ActiveRecord::Base
  
  scope :enabled, -> { where(status: true)}

  validates :name, presence: true, uniqueness: true

end
