class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def get_user_credit_balance
    current_user.credits.sum(:amount)
  end
  helper_method :get_user_credit_balance
end
