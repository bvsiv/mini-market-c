module Merchants
  class SessionsController < ApplicationController
    def new
    end

    def create
      @merchant = Merchant.find_by(email: session_params[:email])

      if @merchant && @merchant.authenticate(session_params[:password])
        session[:merchant_id] = @merchant.id
        flash[:success] = 'Welcome back!'
        redirect_to root_path
      else
        flash[:error] = 'Invalid email/password combination'
        redirect_to login_path
      end
    end

    def destroy
      session[:merchant_id] = nil
      redirect_to root_path
    end

    def session_params
      params.require(:session).permit(:email, :password)
    end
  end
end
