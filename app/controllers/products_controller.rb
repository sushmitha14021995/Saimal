class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = "Product created successfully"
      redirect_to products_path
    else
      flash[:alert] = "Product not created"
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])

    if @product.update(product_params)
      flash[:notice] = "Product updated successfully."
      redirect_to products_path
    else
      flash[:alert] = "Product not created."
      render :new, status: :unprocessable_entity
    end
  end
  
  def show
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :desc, :sku, :category_id, :inventory_id, :price, :discount_id, :created_at, :updated_at)
  end
  
end
