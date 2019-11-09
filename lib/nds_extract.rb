$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

#require 'pp'
#pp directors_database

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
  results = {}
  row_index = 0 
    while row_index < directors_database.length do 
      name = directors_database[row_index][:name]
      gross_totals = []
      director_hash = directors_database[row_index]
      movies_array = director_hash[:movies]
      movies_array.each do |movie|
        gross_totals << movie[:worldwide_gross]
      end
      results.merge!(name => gross_totals.sum)
      row_index += 1
    end
  return results
end
