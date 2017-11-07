module CampaignHelper
  def completion_percentage(c)
    Order.where(campaign: c)
         .count
         .to_f / (c.goal.to_f) * 100
    # (@pledges.to_f) / (@campaign.goal.to_f) * 100
  end

  def pledges(c)
    Order.where(campaign: c)
         .count
  end

  def amount_pledged(c)
    Order.where(campaign: c)
         .count * c.price
  end

  def maximum_pledged(c)
      c.goal * c.price
  end

  def time_left(c)
    (c.end_date - c.start_date).to_i
  end
end


