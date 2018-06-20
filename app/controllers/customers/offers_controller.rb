module Customers
  class OffersController < ApplicationController
  # before_action :require_customer, only: [:show]

    def new
      @offer = Offer.new
    end

    def create
      @customer = current_customer
      @offer = Offer.new(offer_params)
      if @offer.save
        offer[:suggested_price] = @offer.suggested_price
        redirect_to customers_products_path(@customer.id)
     else
        redirect_to customers_offer_new_path
      end
    end

  end
end
