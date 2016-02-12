class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def new
    @article = Alticle.new
  end


  def index
    @articles = Article.all
  end

  def show
    @items = ArticleHeading.where(:article_id=>@article.id) + ArticleImage.where(:article_id=>@article.id) + ArticleText.where(:article_id=>@article.id)
  end




  def create
    @article = Article.new(note_params)
    if @article.save
      redirect_to @article, notice: "投稿が保存されました"
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @article.update(note_params)
      redirect_to @article, notice: "投稿が更新されました"
    else
      render :edit
    end
  end


  def destroy
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :eye_catch, :description, :user_id)
  end


end
