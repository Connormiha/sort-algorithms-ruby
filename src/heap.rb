module HeapSort
  require_relative "swap"

  # Shift down
  # @param  {Array} array
  # @param  {Number} i
  # @param  {Number} j
  def self.shiftDown(array, i, j)
    done = false
    maxChild = 0

    while (i * 2 + 1 < j) && !done
      if i * 2 + 1 == j - 1
        maxChild = i * 2 + 1
      elsif array[i * 2 + 1] > array[i * 2 + 2]
        maxChild = i * 2 + 1
      else
        maxChild = i * 2 + 2
      end

      if array[i] < array[maxChild]
        swap(array, i, maxChild)
        i = maxChild
      else
        done = true
      end
    end
  end

  # Heap sort
  # @see https://en.wikipedia.org/wiki/Heapsort
  # @param {Array} array
  # @return {Array}
  def self.sort(array)
    array = array.clone

    i = (array.length / 2 - 1).floor
    while i >= 0
      shiftDown(array, i, array.length)
      i-= 1
    end

    i = array.length - 1
    while i >= 1
      swap(array, 0, i)
      shiftDown(array, 0, i)
      i-= 1
    end

    array
  end

end
