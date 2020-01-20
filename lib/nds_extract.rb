$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  
  for each in nds do
    dir_name = each[:name]
    gross = 0
    
    for movies in each[:movies] do
      gross += movies[:worldwide_gross]
    end
    
    result[dir_name] = gross
  end
  
  return result
  nil
end

