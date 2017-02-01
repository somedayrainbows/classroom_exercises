# Problem: Take a list of items and sort them in order.
# 
# 1. Create an array (or take a given array) with items in it to be sorted. Name the array something
#
# 2. We know the sorting is complete when the loop completes with no swaps, so need 
# to set "true" to swap -- when swap == false, the sorting will be done
#
# 3. detemine the length of the array so we can do a .times loop on it, minus 1 since we can't 
# compare the last item to anything. name this new thing (array.length) something else.
#
# 4. start the .times block to loop through the length-1 of the array
#
# 5. if the value of the previous (left) item in the pair is greater than the current (right)
# item in the pair, must swap. (then actually swap the items in the array)
#
# 6. set swap to true if a swap has occurred, but to false if no swaps have occurred.
#
# 7. when swap == false (i.e. no swaps occurred on the last pass), then print the final array.

#require 'pry'

class BubbleSort

    def sort(collection) 
        items_to_be_sorted = collection
        swap = true
        sorting_array = items_to_be_sorted.length - 1 #this returns just the length number (3)
        until swap == false
            swap = false
            sorting_array.times do |item| #3.times 0,1,2
                if items_to_be_sorted[item] > items_to_be_sorted[item + 1]
                    items_to_be_sorted[item], items_to_be_sorted[item + 1] = items_to_be_sorted[item +1], items_to_be_sorted[item]
                    swap = true
                    #p items_to_be_sorted
                end
            end  #runs again at 29    
        end ## where the hell do i put swap = false  #figure that out
        puts items_to_be_sorted
    end
end
sorter = BubbleSort.new

sorter.sort(["d", "b", "a", "c"]) # b d a c    -  b a d c  -  b a c d  -  loops after 3 times and ends
# => ["a", "b", "c", "d"]

#binding.pry
#""



# sorter is the (arbitrary) name of the new bubblesort (robot_a)
# sorter.sort says to take the new bubblesort item (named sorter) and apply the sort method to it.
# which returns the array as a bubblesorted array.
