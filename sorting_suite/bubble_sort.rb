# Problem: Take a list of items and sort them in order.
# 
# Create an array of the items to be sorted.
# Identify the first item as previous and the second item in the list as
#   current using the position in the array.
# If the previous item is greater than the current item, swap them.
#   If not, continue.
# Add 1 position to both previous and current items so that the next pair in
#   the list become the new previous and current. 
# Repeat the pair comparison (is "previous" greater than "current"? If yes, swap them).
# Keep repeating through the last item in the array.
# Start the loop again and keep repeating the loop through the entire
#   list of items in the array until successfully sorted, which can be confirmed when
#   nothing is swapped on the final pass through the list. 
# If nothing has been swapped on the most recent pass through the list, end/exit.





class BubbleSort
    def sort(collection)

numbers_to_be_sorted = [4, 8, 5, 11, 2, 0, 1, 9, 3, 6, 12, 7, 10] # Create an array of the items to be sorted.
# n = numbers_to_be_sorted.length 
previous = number[0]  # Identify the first item as previous and the second item in the list as current using the position in the array.
current = number[1]
list_sorted = false

numbers_to_be_sorted.each do |number| 
    if previous > current # If the previous item is greater than the current item, swap them.
        swap!("previous", "current") #   If not, continue.
    else
    end

# Add 1 position to both previous and current items so that the next pair in
#   the list become the new previous and current. 
# Repeat the pair comparison (is "previous" greater than "current"? If yes, swap them).
# Keep repeating through the last item in the array.
# Start the loop again and keep repeating the loop through the entire
#   list of items in the array until successfully sorted, which can be confirmed when
#   nothing is swapped on the final pass through the list. 
# If nothing has been swapped on the most recent pass through the list, end/exit.

    end
end

sorter = BubbleSort.new

sorter.sort(["d", "b", "a", "c"])
=> ["a", "b", "c", "d"]