$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
          #  require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
          #  pp nds
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
            row = 0
            while row < nds.length do

              total = 0
              i_row = 0
              while i_row < nds[row][:movies].length do
                total = total + nds[row][:movies][i_row][:worldwide_gross]
                i_row += 1
              end

              result[nds[row][:name]] = total
              row += 1
            end


  #
  # Be sure to return the result at the end!
  # nil
            return result
end

            directors_totals(directors_database)
