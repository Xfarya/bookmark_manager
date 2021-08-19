require 'pg'

class Bookmark

  def initialize(url)
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test' 
    else 
      con = PG.connect :dbname => 'bookmark_manager' 
    end
    con.exec("INSERT INTO bookmarks(url) VALUES('#{url}');")
  end

  def self.create(url)
    Bookmark.new(url)
  end

  def self.all #look at last challenge from Battle, to check 'self'
    # setting the logic so if the ENV variable is test, it will connect to test database
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test' 
    else 
      con = PG.connect :dbname => 'bookmark_manager' 
    end
    runsql = con.exec "SELECT * FROM bookmarks" #runs SQL - telling it which table to look at
#first way
    # runsql.each do |row|
    #   puts "%s %s" % [ row['id'], row['url']]
    # end
      #%s is a placeholder for filling columns with relative values
#second way
    runsql.map { |row| row['url'] }.join(', ')
  end
end