module Merchants
  class ProductsController < ApplicationController
    before_action :require_valid_merchant!, only: [:index]

    def index
      @products=Product.all
    end

    end
end
