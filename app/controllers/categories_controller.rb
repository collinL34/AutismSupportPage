class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    if params[:search]
      @categories = Category.search(params[:search]).order("created_at DESC")
    end
  end

  def new
  end

  def create
  end

  def show
  end

end