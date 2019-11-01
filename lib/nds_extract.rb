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
  pp directors_database
  row_index = 0
  p nds.length
  while row_index < nds.length
    column_index = 0 
    total = 0
    p nds[row_index][:movies].length
    while column_index <nds[row_index][:movies].length
      total += nds[row_index][:movies][column_index][:worldwide_gross]
      result[nds[row_index][:name]] = total
      p nds[row_index][:movies][column_index][:worldwide_gross]
      column_index+=1
    end 
    row_index +=1 
  end
  p result
end
