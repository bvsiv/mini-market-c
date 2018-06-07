module Customers
  class ProductsController < ApplicationController
    before_action :require_customer, only: [:index]

    def index
      @products=Product.all
    end

  end
end
