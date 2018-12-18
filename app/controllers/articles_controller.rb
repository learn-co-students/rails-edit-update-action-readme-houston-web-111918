class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
    
    # Article.create(article_params)
    # redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    # article = Article.find(params[:id])
    # article.update(article_params)
    # redirect to article
    # raise params.inspect
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end
  
  # private
  #
  #   def article_params
  #     params.require(:article).permit(:title, :description)
  #   end
  
end
