feature "add a bookmark" do
  scenario "checks bookmark is added" do
    visit('/')
    expect(page).to have_content("Enter website:")
    fill_in 'addurl', with: 'https://www.hamsterdance.com'
    click_button('submit')
    expect(page).to have_content('https://www.hamsterdance.com')
    expect(page).not_to have_content('Error')
  end
end

