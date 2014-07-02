class Video < ActiveRecord::Base

  validates :title, presence: true
  validates :id_for_app, presence: true
  
  # Method to return the type of video
  def return_video_type
    if self.is_winner
      return "Winner"
    elsif self.is_entrant
      return "Entrant"
    elsif self.is_other
      return "Other"
    end    
  end

end
