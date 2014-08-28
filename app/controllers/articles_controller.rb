class ArticlesController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def show
    @articles = Article.find(params[:id])
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new(articles_params)

    if @articles.save
      flash[:notice] = "Article saved successfully"
      redirect_to(:controller => 'dashboard', :action => 'index')
    else
      render('new')
    end

  end

  def edit
    @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])
    
    if @articles.update_attributes(articles_params)
      flash[:notice] = "Article updated successfully"
      redirect_to(:controller => 'articles', :action => 'show', :id => @articles.id)
    else
      render('edit')
    end

  end

  def delete
    @articles = Article.find(params[:id])
  end

  def destroy
    videos = Article.find(params[:id])
    videos.destroy
    flash[:notice] = "Article '#{article.url}' deleted"
    redirect_to(:controller => 'dashboard', :action => 'index')
  end

  private
  # Note -
  # - raises an error if title not present
  # - allows listed attribs to be mass-assigned
  def articles_params
    params.require(:article).permit(:id, :title, :author, :year, :url, :is_active, :date)
  end

end
