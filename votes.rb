# Given array whose elements are 2-element arrays ([name,votes]), write a script that will
# choose only those people with over 3000 votes and return the summary string "Lauren (9872)
# and Beth (4521) have more than 3000 votes."

#require 'pry'

candidates = [["Lauren", 9872], ["Ilana", 2468], ["Beth", 4521]]
more_than_3000_votes = []

candidates.each do |candidate_array| 
  #candidate_array.each do |candidate| #candidate, number of votes
    if candidate_array.last > 3000
      more_than_3000_votes << candidate_array
    end

end

puts "#{more_than_3000_votes[0].first} (#{more_than_3000_votes[0].last}) and #{more_than_3000_votes[1].first} (#{more_than_3000_votes[1].last}) have more than 3000 votes."