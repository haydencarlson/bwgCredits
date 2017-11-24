class OffersController < ApplicationController
  def index
    @offers = Offer.order(:title).page params[:page]
  end
end
