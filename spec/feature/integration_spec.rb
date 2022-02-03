# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'john doe'
    fill_in 'Price', with: '10.00'
    fill_in 'Published Date', with: '10/16/2010'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('john doe')
    expect(page).to have_content('10.00')
    expect(page).to have_content('10/16/2010')
  end
end
