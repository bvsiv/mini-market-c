module Customers
  class OffersController < ApplicationController
   before_action :require_customer, only: [:new, :create]
   before_action :set_attributes, only: [:new, :create]

    def new
      @offer = Offer.new
    end

    def create

      @offer = Offer.new(offer_params)
      if @offer.save
        @offer[:suggested_price] = @offer.suggested_price
        redirect_to customers_product_details_path(:id => @product.id)
     else
        redirect_to customers_products_new_offer_path(:id => @product.id)
      end
    end

    private
      def offer_params
        params.require(:offer).permit(:suggested_price).merge(status: "proposed", customer_id: current_customer.id, product_id: @product.id)
      end

      def set_attributes
        @customer = current_customer
        @product = Product.find(params[:id])
      end

  end
end
