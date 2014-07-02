class PastEvent < ActiveRecord::Base

  has_many :gallery_urls
  validates :year, presence: true
  
end
