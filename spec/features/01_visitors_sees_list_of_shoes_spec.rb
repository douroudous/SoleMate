require 'rails_helper'

# [] Visiting the `/shoes` path should contain a list of shoes.

feature "visitor sees a list of shoes" do
  scenario "sees a list of shoes" do
    kobe_two = Shoe.create(model: "Kobe", version: "2", brand: "Adidas", picture: "https://adictscorner.files.wordpress.com/2015/08/1395633122281.jpg", year: "2000", price: 125, description: "This shoe sucks")

    visit shoes_path

    expect(page).to have_content "Kobe"
    expect(page).to have_content "2"
    expect(page).to have_content "Adidas"
    expect(page).to have_css("img[src*='https://adictscorner.files.wordpress.com/2015/08/1395633122281.jpg']")

  end
end