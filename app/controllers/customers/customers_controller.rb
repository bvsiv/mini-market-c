module Customers
  class CustomersController < ApplicationController
    
    def new
      @customer = Customer.new
    end

    def create 
      @customer = Customer.new(customer_params) 
      if @customer.save 
        session[:customer_id] = @customer.id 
        redirect_to customers_path (@customer.id)
     else 
        redirect_to customers_signup_path 
      end 
    end

    def show 
      @customer = Customer.find(params[:customer_id]) 
      @offers = @customer.offers
      @products = @customer.products
    end  

    private
    def customer_params
      params.require(:customer).permit(:name, :email, :password, :password_confirmation)
    end
  end
end
