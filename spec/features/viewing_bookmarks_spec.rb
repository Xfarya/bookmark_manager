feature "view a list of bookmarks" do
  scenario "bookmarks route lets you view bookmarks" do
    visit('/')

    expect(page).to have_content ("http://www.makersacademy.com")
  end
end
