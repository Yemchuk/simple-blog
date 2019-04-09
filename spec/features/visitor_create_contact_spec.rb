require 'rails_helper'

feature "Contact Creation" do
  scenario "allows acces to contact page" do
    visit '/contacts'

    expect(page).to have_content 'Blabla'
  end
end
