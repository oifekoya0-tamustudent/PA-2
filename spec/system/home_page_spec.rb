require 'rails_helper'

RSpec.describe "Home page", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "shows hero and contact section and the CTA" do
    visit root_path
    expect(page).to have_content("Driving Success Through Strategy & Operations")
    expect(page).to have_content("contact@medianso.com")
    expect(page).to have_link("Get Started", href: "#contact")
  end
end