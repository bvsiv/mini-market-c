require 'rails_helper'

feature "Customer creates new account" do

scenario "Customer creates new account" do
visit customers_signup_path
click_button 'Sign up'

expect(current_path).to eq customers_signup_path

end
end
