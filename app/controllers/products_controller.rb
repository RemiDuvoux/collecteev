class ProductsController < ApplicationController
  def new
    @product = Product.new
    @campaign = Campaign.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    @product.save
    @campaign = Campaign.new
    @campaign.product = @product
    @campaign.save
    redirect_to campaign_path(@campaign)
  end

  private

  def product_params
    params.require(:product).permit(:product_image, :product_name, :product_image_cache, :product_desc)
  end
end
