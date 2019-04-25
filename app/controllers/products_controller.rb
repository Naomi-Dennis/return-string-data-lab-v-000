class ProductsController < ApplicationController

  def index
     @products = Product.all
  end
  def create
     Product.create!(product_params)
     redirect_to products_path
  end

  def show_inventory
     inventory_id = params[:id]
     if Product.find(inventory_id).inventory > 0
        render template: "inventory/show"
     end
  end
   private

    def product_params
      params.permit(:name, :price, :inventory, :description)
    end
end
