class ProductsController < ApplicationController

  def index
    @products = Product.all
    @categories = Category.all
    respond_to do |format|
      format.html { render }
      format.json { render json: @products }
    end
  end

  def show
    @product = Product.find params[:id]
    @categories = Category.all
    respond_to do |format|
      format.html { render }
      format.json { render json: @product }
    end
  end

end
