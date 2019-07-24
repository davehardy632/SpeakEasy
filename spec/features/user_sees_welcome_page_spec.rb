require 'rails_helper'

RSpec.describe "welcome home page", type: :feature do
  describe "As a visitor" do
    it "displays homepage" do
      visit '/'

      expect(page).to have_content('Speakeasy')
    end
  end
end
