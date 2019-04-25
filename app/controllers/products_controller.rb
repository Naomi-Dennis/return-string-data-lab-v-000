class ProductsController < ApplicationController

  def index
     @products = Product.all
  end
  def create
     Product.create!(product_params)
     redirect_to products_path
  end

  def inventory
     inventory_id = params[:id]
     @inventory_empty = (Product.find(inventory_id).inventory > 0).to_s
     return @inventory_empty
  end
   private

    def product_params
      params.permit(:name, :price, :inventory, :description)
    end
end
