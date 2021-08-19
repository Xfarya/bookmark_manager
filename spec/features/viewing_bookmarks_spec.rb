require 'pg'
feature "view a list of bookmarks" do
  scenario "bookmarks route lets you view bookmarks" do
    Bookmark.data_entry('http://www.makersacademy.com/', "Makers")
    Bookmark.data_entry('http://www.destroyallsoftware.com/', "Destroy All Software")
    Bookmark.data_entry('http://www.google.com/', "Google")
    visit('/bookmarks')
    expect(page).to have_content ('Makers')
    expect(page).to have_content ('Destroy All Software')
    expect(page).to have_content ('Google')
  end
end
