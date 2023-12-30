class ArticlesController < ApplicationController
  #show all the data from db
  def index
    @articles = Article.all
  end

  #show article based on the id 
  def show
    @article = Article.find(params[:id])
  end
end
