# Swaps array elements
# @param {Array} array
# @param {Number} int1
# @param {Number} int2
def swap(array, int1, int2)
  if array[int1].nil? || array[int2].nil?
    raise "
        int1 is #{int1} - #{array[int1]}
        int2 is #{int2} - #{array[int2]}
      "
  end

  array[int1], array[int2] = array[int2], array[int1]
end
