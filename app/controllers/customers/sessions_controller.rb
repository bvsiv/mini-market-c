module Customers
  class SessionsController < ApplicationController
    
    def new
    end

    def create
      @customer = Customer.find_by_email(params[:session][:email])
        if @customer && @customer.authenticate(params[:session][:password])
          session[:customer_id] = @customer.id
          redirect_to customers_path (@customer.id)
        else
          redirect_to customers_login_path
        end 
    end
    
    def destroy 
      session[:customer_id] = nil 
      redirect_to '/' 
    end
  end
end
