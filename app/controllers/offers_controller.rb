class OffersController < ApplicationController
  def index
    @offers = Offer.order(:created_at => :asc).page params[:page]
    @total_completed_offers = Credit.all.count
  end
end
