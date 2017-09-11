class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @order = Order.new(order_params.merge(user: current_user))
    @order.campaign = @campaign
    @order.save!
    redirect_to order_path(@order)
  end

  def cancel
  end

  def show
    @order = Order.find(params[:id])
  end
private
  def order_params
    params.require(:order).permit(:street_name, :zip_code, :city_name)
  end
end
