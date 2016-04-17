module CocktailSort
  require_relative "swap"

  # Cocktail sort
  # @see https://en.wikipedia.org/wiki/Cocktail_shaker_sort
  # @param {Array} array
  # @return {Array}
  def self.sort(array)
    array = array.clone

    right = array.length - 1

    for left in 0...right
      swapped = false

      for i in left...right
        if array[i] > array[i + 1]
          swap(array, i, i + 1)
          swapped = true
        end
      end

      right-= 1

      i = right
      while i > left
        if array[i] < array[i - 1]
          swap(array, i, i - 1)
          swapped = true
        end
        i-= 1
      end

      break unless swapped
    end

    array
  end

end
