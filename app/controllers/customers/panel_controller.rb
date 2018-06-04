module Customers
  class PanelController < ApplicationController
    before_action :require_customer, only: [:index]

    def index
      @customer = current_customer 
      @offers = @customer.offers
      @products = @customer.products
    end  

  end
end
