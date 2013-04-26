class ArticlesController < ApplicationController
  def index
    @articles = Article.where(:published => true).page(params[:page]).per_page(8)
  end

  def show
    @article ||= Article.find_by_slug!(params[:id])
  end

  #Temporary function
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to article_path, notice: "Successfully created product."
    else
      render :new
    end
  end
end
