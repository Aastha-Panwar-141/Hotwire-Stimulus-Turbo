class NewsController < ApplicationController
  before_action: set_news, only: %i[show, edit, update, destroy]
  def index
    news = News.all
  end

  def new
    news = News.new
  end

  def create
    news = News.create(news_params)
  end

  def show
  end

  def edit
  end

  def update
    news.update(news_params)
  end

  def destroy
    news.destroy
  end

  private

  def news_params
    params.require(news).permit(title, content)
  end

  def set_news
    news = News.find(params[:id])
  end
end
