class ApiController < ApplicationController

  respond_to :json

  def data
    @past_events = PastEvent.all
    @future_events = FutureEvent.where(:is_active => true)
    @news_items = NewsItem.all
    @social_links = SocialMediaLink.all
    @about_content = About.all
    @videos = Video.all
    @articles = Article.where(:is_active => true)
  end

end
