module Customers
  class ApplicationController < ActionController::Base
    def require_customer
      redirect_to '/login' unless current_customer
    end
  end
end
