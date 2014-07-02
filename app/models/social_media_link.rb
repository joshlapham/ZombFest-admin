class SocialMediaLink < ActiveRecord::Base

  validates :url, presence: true
  
end
