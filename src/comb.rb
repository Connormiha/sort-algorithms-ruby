module CombSort
  require_relative "swap"

  # Comb sort
  # @see https://en.wikipedia.org/wiki/Comb_sort
  # @param {Array} array
  # @return {Array}
  def self.sort(array)
    array = array.clone

    gap = array.length
    swapped = false

    while swapped || gap > 1
      gap = (gap / 1.247).floor if gap > 1

      swapped = false

      for i in gap...array.length
        if array[i - gap] > array[i]
          swap(array, i, i - gap)
          swapped = true
        end
      end
    end

    array
  end

end
