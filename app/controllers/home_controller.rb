class HomeController < ApplicationController

  def index
    @user = User.new
    @article = Article.first
  end
  
end