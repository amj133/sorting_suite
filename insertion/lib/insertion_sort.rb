require 'pry'

class InsertionSort

  def find_to_insert(unsorted)
    @to_insert = unsorted.shift
  end

  def find_break_index(unsorted, sorted)
    find_to_insert(unsorted)
    break_value = sorted.find {|value| @to_insert < value}
    @break_index = sorted.index(break_value)
  end

  def insert(unsorted, sorted)
    find_break_index(unsorted, sorted)
    sorted_broken_right = []
    sorted_broken_left = []
    sorted.each_with_index do |value, index|
      if index >= @break_index
        sorted_broken_right << value
      else
        sorted_broken_left << value
      end
    end
    sorted_broken_right = sorted_broken_right.unshift(@to_insert)
    @sorted = sorted_broken_left + sorted_broken_right
  end

  def sort(unsorted)
    @sorted = []
    until unsorted[0].nil?
      if @sorted[0].nil? || @sorted.max < unsorted[0]
        @sorted << unsorted.shift
      else
        insert(unsorted, @sorted)
      end
    end
    @sorted
  end

end
