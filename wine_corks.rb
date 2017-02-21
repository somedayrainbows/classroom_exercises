# *Baseline:* Given an array of data listing cost, quantity, and distance from your location ([cost, quantity, distance]), write a method that will print two strings to terminal. You will need to incorporate the federal reimbursement mileage rate of $0.535 into your calculations.
#
deals = [[50, 50, 4], [100, 30, 20], [3, 200, 100]]
#
# ```The best value is 50 for 5 dollars.
# The second best value is 10 for 5 dollars```
#
# *Extension:* Do the same with data coming in with a hash and unstandardized prices.
#
# ```deals = {
# "Denver" => ["50 dollars", 50, 4],
# "Aurora" => ["100.00", 30, 20],
# "Wherever" => ["$3", 200, 100]
# }```

deals = [[50, 50, 4], [100, 30, 20], [3, 200, 100]]

deal_cost = deals.collect { |cost| cost[0] }
deal_quantity = deals.collect { |quantity| quantity[1] }

deal_distance = deals.collect { |distance| distance[2] }

deal_mileage_cost = deal_distance.map { |distance| distance * 0.535 }

# string = "The best value is #{deals.collect { |quantity| quantity[1] }" for #{deal_cost[1] + deal_mileage_cost[1]}."
#--------------------------------------------------
#Beth's answer

def find_deals(deals)
  sorted = deals.sort_by do |cost, qty, mileage|
    transportation = 2 * mileage * 0.535 #2 b/c roundtrip
    (transportation + cost) /qty
  end
  sorted.first(2).each_with_index do |(cost, qty, mileage), index|
    index
    puts "The #{second} " if counter ==1}#left off here
    counter += 1
  end

  [first, second].each do |cost, qty, mileage|
    puts "The best value is #{qty} for #{cost} dollars.""
