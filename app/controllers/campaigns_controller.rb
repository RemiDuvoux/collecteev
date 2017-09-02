class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user = current_user
    @campaign.save
    redirect_to campaign_path(@campaign)
  end

  def show
    @campaign = Campaign.find(params[:id])
  end



  private

  def campaign_params
    params.require(:campaign).permit(:product_image, :product_name, :product_image_cache, :product_desc)
  end
end
