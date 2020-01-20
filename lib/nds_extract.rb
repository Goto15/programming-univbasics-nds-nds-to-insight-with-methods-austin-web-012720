$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross = 0
  
  for each in director_data do
    gross += each[:worldwide_gross]
  end
  
  return gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  
  for each in nds do
    dir_name = each[:name]
    gross = gross_for_director(each[:movies])
    
    result[dir_name] = gross
  end
  
  return result
end

