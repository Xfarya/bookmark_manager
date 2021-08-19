require 'pg'
feature "view a list of bookmarks" do
  scenario "bookmarks route lets you view bookmarks" do
    # connecting to the data based that we just emptied in setup_test_database.rb file
    connection = PG.connect(dbname: 'bookmark_manager_test')
    # filling the truncated (empty) database with new values
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com/');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    
    visit('/bookmarks')
    expect(page).to have_content ("http://www.makersacademy.com/")
  end
end
