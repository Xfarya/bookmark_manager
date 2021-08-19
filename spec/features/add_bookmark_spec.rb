feature "add a bookmark" do
  scenario "checks bookmark is added" do
    visit('/')
    expect(page).to have_content("Enter website:")
    fill_in 'addurl', with: 'https://www.hamsterdance.com'
    fill_in 'title', with: 'Hamster Dance'
    click_button('submit')
    expect(page).to have_content('Hamster Dance')
    expect(page).not_to have_content('Error')
  end
end

