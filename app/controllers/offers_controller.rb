class OffersController < ApplicationController
  def index
    # @offers = Offer.all
    @offers = Offer.paginate(:page => params[:page])
  end
end
