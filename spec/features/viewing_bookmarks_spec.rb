feature "view a list of bookmarks" do
  scenario "bookmarks route lets you view bookmarks" do
    visit('/bookmarks')
    expect(page).to have_content "list of bookmarks"
  end
end
