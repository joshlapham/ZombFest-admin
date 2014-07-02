class NewsItem < ActiveRecord::Base

  validates :title, presence: true
  validates :id_for_app, presence: true

end
