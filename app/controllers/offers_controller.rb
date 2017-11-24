class OffersController < ApplicationController
  def index
    @offers = Offer.order(:created_at => :asc).page params[:page]
    @total_completed_offers = Credit.all.count
    @total_credits_rewarded = Credit.all.where('amount > ?', 0).sum(:amount)
    @total_credits_redeemed = Credit.all.where('amount < ?', 0).sum(:amount) * -1
  end
end
