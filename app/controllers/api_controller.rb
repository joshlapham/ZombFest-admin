class ApiController < ApplicationController

  respond_to :json

  def data
    @past_events = PastEvent.all
    @future_events = FutureEvent.all
    @news_items = NewsItem.all
    @social_links = SocialMediaLink.all
    @about_content = About.all
    @videos = Video.all
  end

end
