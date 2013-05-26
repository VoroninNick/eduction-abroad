class ArticlesController < ApplicationController
  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag]).page(params[:page]).per_page(8)
    else
      @articles = Article.where(:published => true).page(params[:page]).per_page(8)
    end
  end

  def show
    @article ||= Article.find_by_slug!(params[:id])
    @last ||= Article.find(:all, :order => "RANDOM()", :limit => 4)
  end
end
