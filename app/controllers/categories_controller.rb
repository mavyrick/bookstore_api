class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render json: { categories: @categories }
  end

  def show
    @category = Category.find params[:id]
    render json: { categories: @category }
  end

end
