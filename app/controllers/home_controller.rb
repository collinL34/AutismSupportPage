class HomeController < ApplicationController

  def index
    @user = User.new
    @articles = Article.all
    @category = nil

    if params[:search]
      @category = Category.find_by_name(params[:search])
      params[:search] = nil
    else
      @category = Category.all.order("created_at DESC")
    end

  end
  
end