require 'rails_helper'

feature "Merchant log in" do

scenario "Merchant log in" do
visit merchants_login_path
click_button 'Log In'

expect(current_path).to eq merchants_login_path

end
end