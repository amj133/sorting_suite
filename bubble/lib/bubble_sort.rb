
class BubbleSort

  def sort_once(unsorted)
    previous_index = 0
    current_index = 1
    until unsorted[current_index].nil?
      previous = unsorted[previous_index]
      current = unsorted[current_index]
      if current < previous
        unsorted[previous_index] = current
        unsorted[current_index] = previous
      end
      previous_index += 1
      current_index += 1
    end
    unsorted
  end

  def sort(unsorted)
    sort_count = 0
    until sort_count == (unsorted.count - 1)
      unsorted = sort_once(unsorted)
      sort_count += 1
    end
    unsorted
  end

end

 # using recursion below - needs to initialize with an ivar guess count
  # def sort(unsorted)
  #   previous_index = 0
  #   current_index = 1
  #   @sort_count += 1
  #   until unsorted[current_index].nil?
  #     previous = unsorted[previous_index]
  #     current = unsorted[current_index]
  #     if current < previous
  #       unsorted[previous_index] = current
  #       unsorted[current_index] = previous
  #     end
  #     previous_index += 1
  #     current_index += 1
  #   end
  #   sort(unsorted) until @sort_count == (unsorted.count - 1)
  #   unsorted
  # end
