require 'pg'

class Bookmark

  def self.all #look at last challenge from Battle, to check 'self'
    # [
    #   "http://www.makersacademy.com",
    #   "http://www.destroyallsoftware.com",
    #   "http://www.google.com"
    # ].join(', ')
    con = PG.connect :dbname => 'bookmark_manager' #creates a connection to database
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