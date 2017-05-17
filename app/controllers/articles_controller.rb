class ArticlesController < ApplicationController

  def index    
  end

  def new
    @article = Article.new()
    @categories = Category.first
  end

  def edit
  end

  def create
    obj = Article.nokogiri_obj_makr(params[:article][:link])
    title = Article.title_grabber(obj)
    img = Article.img_grabber(obj)
    categ = Category.find(params[:article][:category_id])

    @article  = Article.new(title: title, body: params[:body], category_id: categ.id, image_link: img, author_id: session[:user_id], link: params[:article][:link])

    if @article.save
      redirect_to :root
    else
      @article.errors.messages
      redirect_to :back
    end
  end

  def update
  end

  def destroy
  end

end