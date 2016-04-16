module InsertionSort
  require_relative "swap"

  # Insertion sort
  # @see https://en.wikipedia.org/wiki/Insertion_sort
  # @param {Array} array
  # @return {Array}
  def self.sort(array)
    array = array.clone

    for i in 0...array.length - 1
      j = i + 1
      while j > 0
        break if array[j] >= array[j - 1]
        swap(array, j, j - 1)
        j-= 1
      end
    end

    array
  end

end
