
describe Bookmark do
  #it 'shows a list of all its bookmarks' do
    #bookmarks = Bookmark.data_extraction
    #expect(bookmarks).to include("Makers")
    #expect(bookmarks).to include("Destroy All Software")
    #expect(bookmarks).to include("Google")
  #end
  it 'creates a new bookmark' do
    bookmark = Bookmark.data_entry(url: 'http://www.example.org', title: 'Test Bookmark').first
    expect(bookmark['url']).to eq 'http://www.example.org'
    expect(bookmark['title']).to eq 'Test Bookmark'
  end
end