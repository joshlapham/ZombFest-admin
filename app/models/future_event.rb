class FutureEvent < ActiveRecord::Base

  has_many :future_event_times, dependent: :destroy
  
end
