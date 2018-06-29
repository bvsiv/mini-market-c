module Customers
  class OffersController < ApplicationController
   before_action :require_customer, only: [:new, :create]

    def new
      @offer = Offer.new
      @customer = current_customer
      @product=Product.find(params[:id])
    end

    def create
      @customer = current_customer
      @product=Product.find(params[:id])

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
  end
end
