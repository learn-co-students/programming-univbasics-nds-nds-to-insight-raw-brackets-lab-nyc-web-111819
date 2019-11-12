$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  o = 0
  while o < nds.count do
    i = 0
    total = 0
    while i < nds[o][:movies].count do
      total += nds[o][:movies][i][:worldwide_gross]
      i += 1
    end
    name = nds[o][:name]
    result.merge!(name => total)
    o += 1
  end
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  result
end
