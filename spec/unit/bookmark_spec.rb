
describe Bookmark do
  it 'shows a list of all its bookmarks' do
    bookmarks = Bookmark.all
    expect(bookmarks).to include("http://www.makersacademy.com/")
    expect(bookmarks).to include("http://www.destroyallsoftware.com")
    expect(bookmarks).to include("http://www.google.com")
  end
end