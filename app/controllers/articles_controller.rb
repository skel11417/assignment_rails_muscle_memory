class ArticlesController < ApplicationController
  include ArticlesHelper
  
  # def index
  #   @articles = Article.all
  # end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_parameters)
    @article.save
    redirect_to article_path(@article)
  end
end
