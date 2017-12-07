class OffersController < ApplicationController
  before_action :user_logged_in
  def index
    @offers = Offer.order(:created_at => :asc).page params[:page]
    @total_completed_offers = Credit.all.count
    @total_credits_rewarded = Credit.all.where('amount > ?', 0).sum(:amount)
    @total_credits_redeemed = Credit.all.where('amount < ?', 0).sum(:amount) * -1
    @total_users = User.all.count
    @total_offers = Offer.all.count
  end
end
