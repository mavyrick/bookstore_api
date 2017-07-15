class ProductsController < ApplicationController

  def index
    @products = Product.all
    @categories = Category.all
    render json: { products: @products }
  end

  def show
    @product = Product.find params[:id]
    @categories = Category.all
    render json: { products: @product }
  end

end
