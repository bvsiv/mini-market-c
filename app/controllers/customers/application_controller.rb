module Customers
  class ApplicationController < ActionController::Base
    
    helper_method :current_customer

    def current_customer
      @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id] 
    end

    def require_customer 
      redirect_to customers_login_path unless current_customer
    end
  end
end
