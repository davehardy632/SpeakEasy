require 'rails_helper'

describe "As a registered user, I can login, enter my device And authenticate with amazon" do
  before :each do
    user = User.create!(first_name: "David", last_name: "Hardy", dsn: "G090U509916522Q8", product_id: "Prototype", amazon_token: nil)
  end
  context "when visiting /login, I am redirected to the amazon LWA" do
    it "enter my credentials and authorize my alexa device" do

      visit "/login"

      expect(current_path).to eq(dashboard_path)
      expect(user.token).to_not eq(nil)
      expect(page).to have_content("Your amazon device is active")
    end
  end
end
