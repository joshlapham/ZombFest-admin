class GalleryUrl < ActiveRecord::Base

  belongs_to :past_event
  validates :url, presence: true
  validates :past_event_id, presence: true
  
end
