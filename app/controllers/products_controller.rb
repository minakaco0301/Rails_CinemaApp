class ProductsController < ReviewController
  def show
    @products = Product.find(params[:id])
  end
end
