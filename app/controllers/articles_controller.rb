class ArticlesController < ApplicationController

  def index    
  end

  def new
    @article = Article.new()
  end

  def edit
  end

  def create
    obj = Article.nokogiri_obj_makr(params[:article][:link])
    title = Article.title_grabber(obj)
    img = Article.img_grabber(obj)
    categ = Category.find_by_name(params[:article][:category]).id

    @article  = Article.new(title: title, category_id: categ, image_link: img, author_id: session[:user_id], link: params[:article][:link])

    if @article.save
      redirect_to :root
    else
      redirect_to :back
    end
  end

  def update
  end

  def destroy
  end

end