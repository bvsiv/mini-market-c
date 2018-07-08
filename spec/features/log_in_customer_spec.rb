require 'rails_helper'

feature "Customer log in" do

scenario "Customer log in" do
visit customers_login_path
click_button 'Log in'

expect(current_path).to eq customers_login_path

end
end
