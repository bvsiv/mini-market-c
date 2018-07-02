module Customers
  class ProductsController < ApplicationController
    before_action :require_customer, only: [:index, :show]
    before_action :set_customer, only: [:index, :show]

    def index
      @products = Product.all
    end

    def show
      @product = Product.find(params[:id])
    end

    private
    def set_customer
      @customer = current_customer
    end

  end
end
