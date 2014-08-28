class DashboardController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def index
    @events = Event.all
    @past_events = PastEvent.all
    @future_events = FutureEvent.all
    @news_items = NewsItem.all
    @social_links = SocialMediaLink.all
    @about_content = About.all
    @videos = Video.all
    @found_content = About.first
    @articles = Article.all
  end

end
