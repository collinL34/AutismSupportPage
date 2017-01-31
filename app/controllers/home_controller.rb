class HomeController < ApplicationController

  def index
    @user = User.new
    @articles = Article.all
  end
  
end