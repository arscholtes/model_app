module ApplicationHelper
<<<<<<< HEAD
  # Returns the full title on a per-page basis.           # Documentation comment
  def full_title(page_title = '')                         # Method def, optional arg
    base_title = "Ruby on Rails Tutorial Sample App"      # Variable assignment
    if page_title.empty?                                  # Boolean test
      base_title                                          # Implicit return
    else
      page_title + " | " + base_title                     # String concatenation
=======
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
>>>>>>> 6eebe2cf8578f7e18fcd006923c69011c9cb67a4
    end
  end
end
