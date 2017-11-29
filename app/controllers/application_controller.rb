class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :sidebar_data
  
  def get_user_credit_balance
    current_user.credits.sum(:amount)
  end
  helper_method :get_user_credit_balance

  def sidebar_data
    @offers = Offer.order(:created_at => :asc).page params[:page]
    @total_completed_offers = Credit.all.count
    @total_credits_rewarded = Credit.all.where('amount > ?', 0).sum(:amount)
    @total_credits_redeemed = Credit.all.where('amount < ?', 0).sum(:amount) * -1
    @total_users = User.all.count
    @total_offers = Offer.all.count
  end
end
