$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  hash = {}
  row_count = 0
  
  while row_count < nds.count do
    name = nds[row_count][:name]
    movies = nds[row_count][:movies]
    column_count = 0
    total = 0
    while column_count < movies.count do
      total += movies[column_count][:worldwide_gross]
      column_count += 1
    end
    hash[name] = total
    row_count += 1
  end
  
  return hash
end
