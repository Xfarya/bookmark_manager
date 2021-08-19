require 'pg'
feature "view a list of bookmarks" do
  scenario "bookmarks route lets you view bookmarks" do
    Bookmark.create('http://www.makersacademy.com/')
    Bookmark.create('http://www.destroyallsoftware.com/')
    Bookmark.create('http://www.google.com/')
    visit('/bookmarks')
    expect(page).to have_content ('http://www.makersacademy.com/')
    expect(page).to have_content ('http://www.destroyallsoftware.com/')
    expect(page).to have_content ('http://www.google.com/')
  end
end
