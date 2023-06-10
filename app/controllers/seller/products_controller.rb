class Seller::ProductsController < ApplicationController
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
  # @product.seller_id = current_seller.id  
    @product.save
    redirect_to seller_products_path
  end

  def index
    @products = Product.all
  end

  def show
    @products = Product.find(params[:id])
  end
  
  def destroy
    @product = Product.find(params[:id])
    product.destroy
  end
  
  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :shipping_cost)
  end
end