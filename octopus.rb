# A Very Hungry Octopus wants to eat the longest fish in an array of fish.
#
arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

# Sluggish Octopus
# Find the longest fish in O(n2) time. Do this by comparing all fish lengths to all other fish lengths
# bubble sort? i think so. review bubble sort lol i keep forgetting. also general algo work, been a while (heh, get it?)

def sluggish_oct(arr)
  new_arr = arr.dup
  sorted = true

  i = 0
  until sorted && i == new_arr.length - 1
    if new_arr[i].length > new_arr[i + 1].length
      new_arr[i], new_arr[i + 1] = new_arr[i + 1], new_arr[i]
      sorted = false
    end

    i += 1
    if i == arr.length - 1 && sorted == false
      i = 0
      sorted = true
    end
  end

  new_arr.last
end




# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Accessing this on GitHub? Use this link. Remember that Big O is classified by the dominant term.





# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.

def clever_oct(arr)
  longest = arr[0]
  arr.each do |fish|
    longest = fish if fish.length > longest.length
  end
  longest
end








# Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in the following directions:  tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ]  To play the game, the octopus must step on a tile with her corresponding tentacle. We can assume that the octopus's eight tentacles are numbered and correspond to the tile direction indices.
#
# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octopus must move. This should take O(n) time.
#
# slow_dance("up", tiles_array)
# > 0
#
# slow_dance("right-down", tiles_array)
# > 3
# Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a different data structure and write a new function so that you can access the tentacle number in O(1) time.
#
# fast_dance("up", new_tiles_data_structure)
# > 0
#
# fast_dance("right-down", new_tiles_data_structure)
# > 3
# After attempting the project make sure to check out the solution
