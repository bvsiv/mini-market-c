class OffersController < ApplicationController
  
  def show
    @offer = Offer.find(params[:id])
  end

  private 
  def offer_params 
    params.require(:offer).permit(:status, :suggested_price) 
  end

end
