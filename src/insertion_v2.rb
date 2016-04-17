module InsertionSort_v2
  require_relative "swap"

  # Insertion sort
  # @see https://en.wikipedia.org/wiki/Insertion_sort
  # @param {Array} array
  # @return {Array}
  def self.sort(array)
    array = array.clone

    j = 1
    i = 1
    while i < array.length
      if j == 0 || array[j] >= array[j - 1]
        i+= 1
        j = i
        next
      end

      swap(array, j, j - 1)
      j-= 1
    end

    array
  end

end
