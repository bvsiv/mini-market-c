class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end

  def show 
    @product = Product.find(params[:id]) 
    @offers = @product.offers
  end

  private 
  def product_params 
    params.require(:product).permit(:name, :description,) 
  end

end
