module BubbleSort_v2
  require_relative "swap"

  # Bubble sort
  # @see https://en.wikipedia.org/wiki/Bubble_sort
  # @param {Array} array
  # @return {Array}
  def self.sort(array)
    array = array.clone

    i = array.length - 1
    j = 0

    while i > 0
      if j == i
        j = 0
        i-= 1
        next
      end

      swap(array, j, j + 1) if array[j] > array[j + 1]
      j+= 1
    end

    array
  end

end
