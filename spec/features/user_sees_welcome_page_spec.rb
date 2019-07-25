require 'rails_helper'

RSpec.describe "welcome home page", type: :feature do
  describe "As a visitor" do
    it "displays homepage" do
      visit '/'

      within '#title' do
        expect(page).to have_content('Speakeasy')
      end

      within '#flowchart' do
        expect(page).to have_xpath("//img[@src='../assets/welcome/flow.png']")
      end

      within '.profile_images' do
        expect(page).to have_content('SpeakeasyCreators')
        expect(page).to have_xpath("//img[@src='../assets/welcome/billy.png']")
        expect(page).to have_xpath("//img[@src='../assets/welcome/david.png']")
        expect(page).to have_xpath("//img[@src='../assets/welcome/james.png']")
      end
    end
  end
end
