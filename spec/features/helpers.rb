def truncate_table
  if (!Bookmark.all.nil?) 
    Bookmark.all.clear
  end

end