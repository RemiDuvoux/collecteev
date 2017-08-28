class CampaignsController < ApplicationController
  def show
    @campaign = Campaign.find(params[:id])
    @product = @campaign.product
  end

  def index
    @campaigns = Campaign.all
  end
end
