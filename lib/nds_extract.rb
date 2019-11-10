$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # create an empty object. We are going to put stuff in this object using our loop, then return it when we are done.
   result = {}
   director = 0
  
  # Loop through each index in the nds array
  # director is a name referencing the value for the current index of the loop
  for director in nds do
    name   = director[:name]
    movies = director[:movies]
  
    result[name] = 0
    # loop through each of the current director's movies
    for movie in movies do
      result[name] += movie[:worldwide_gross]
    end
  
    # this can also be done in one line using the .reduce method
    #result[director[:name]] = director[:movies].reduce(0){|sum,e| sum + e[:worldwide_gross]}
  end
  
  return result
end
# result = {}
# for x in nds do
#   result[x[:name]] = x[:movies].reduce(0){|sum,e| sum + e[:worldwide_gross]}
# end
# return result
#   # nds[0][:movies][0][:worldwide_gross]

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {
  #}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
