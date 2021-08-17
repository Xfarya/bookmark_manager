require 'bookmark'

describe Bookmark do
  it 'shows a list of all its bookmarks' do
    bookmarks = [
      "http://www.makersacademy.com/",
      "http://www.google.com/",
      "http://www.destroyallsoftware.com"
    ].join(', ')

    expect(described_class.all).to eq(bookmarks)
  end
end