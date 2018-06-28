module Customers
  class ProductsController < ApplicationController
    before_action :require_customer, only: :index

    def index
      @products=Product.all
      @customer = current_customer
    end

    def show
      @product=Product.find(params[:id])
      @customer = current_customer
    end

  end
end
