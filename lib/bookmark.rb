require 'pg'

class Bookmark
  attr_reader :id, :url, :title

  def initialize(id:, url:, title:)
    @id = id
    @url = url
    @title = title
  end


  def self.data_entry(url, title)
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test' 
    else 
      con = PG.connect :dbname => 'bookmark_manager' 
    end
    result = con.exec("INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}') RETURNING id, title, url;")
    Bookmark.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
  end

  def self.data_extraction #look at last challenge from Battle, to check 'self'
    # setting the logic so if the ENV variable is test, it will connect to test database
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test' 
    else 
      con = PG.connect :dbname => 'bookmark_manager' 
    end
    result = con.exec "SELECT * FROM bookmarks"
    result.map do |bookmark|
      Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    end
  end
end
    #runs SQL - telling it which table to look at
#first way
    # runsql.each do |row|
    #   puts "%s %s" % [ row['id'], row['url']]
    # end
      #%s is a placeholder for filling columns with relative values
#second way
    #runsql.map { |row| row['title'] }.join(', ')
