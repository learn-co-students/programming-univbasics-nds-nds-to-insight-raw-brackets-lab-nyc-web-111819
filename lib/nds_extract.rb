$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  row_index = 0
  totals = {}

  while row_index < nds.length do
    directors_name = nds[row_index][:name]
    totals[directors_name] = 0
    movie_index = 0
      while movie_index < nds[row_index][:movies].length do
        totals[directors_name] += nds[row_index][:movies][movie_index][:worldwide_gross]
        movie_index += 1 
    end
    row_index += 1
  end
  
  totals
  
end
