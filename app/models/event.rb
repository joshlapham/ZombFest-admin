class Event < ActiveRecord::Base

  validates :year, presence: true
  
end
