$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  new_hash = {}
  counter = 0

  while counter < nds.count do
    director_hash = nds[counter]
    new_hash[director_hash[:name]] = 0
    movies_array = director_hash[:movies]

    new_counter = 0
    total_movie_revenue = 0

    while new_counter < movies_array.count do

      movies_array[new_counter][:worldwide_gross]
      total_movie_revenue += movies_array[new_counter][:worldwide_gross]
      new_counter += 1
    end

    new_hash[director_hash[:name]] = total_movie_revenue

    counter += 1
  end

  new_hash

end
