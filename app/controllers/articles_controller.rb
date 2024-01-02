class ArticlesController < ApplicationController
  #show all the data from db
  def index
    @articles = Article.all
  end

  #show article based on the id 
  def show
    @article = Article.find(params[:id])
  end

  #instantiate new article but does not save it
  def new
    @article = Article.new
  end

  # instantiate new articles with values for the title and body, and attempts to save it, 
  # if article is save redirects to http://localhost:3000/articles/#{@article.id}, else returns 422
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  #edit and update an existing data and stores it in @article
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  #filters parameters
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end