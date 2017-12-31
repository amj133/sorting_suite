require './insertion/lib/insertion_sort'
require 'minitest/autorun'
require 'minitest/pride'

class InsertionSortTest < Minitest::Test

  def test_it_exists
    sorter = InsertionSort.new

    assert_instance_of InsertionSort, sorter
  end

  def test_find_to_insert_shifts_first_element_of_unsorted
    sorter = InsertionSort.new

    assert_equal 3, sorter.find_to_insert([3, 5, 4, 2, 1, 0])
    assert_equal 'd', sorter.find_to_insert(['d', 'a', 'c', 'b'])
  end

  def test_find_break_index_returns_insert_location_index_of_sorted
    sorter = InsertionSort.new

    assert_equal 1, sorter.find_break_index([2, 5, 0], [1, 3])
    assert_equal 3, sorter.find_break_index([5, 4, 0], [1, 2, 3, 6])
    assert_equal 0, sorter.find_break_index([0, 4, 5], [1, 2, 3, 6])
  end

  def test_insert_will_place_element_at_break_index_location_of_sorted
    sorter = InsertionSort.new

    assert_equal [1, 2, 3, 5, 6], sorter.insert([5, 4, 0], [1, 2, 3, 6])
    assert_equal [1, 2, 4, 5, 6], sorter.insert([4, 3, 0], [1, 2, 5, 6])
    assert_equal [1, 2, 3, 5, 6], sorter.insert([2, 4, 0], [1, 3, 5, 6])
    assert_equal [2, 3], sorter.insert([2, 1, 4, 0], [3])
    assert_equal ['a', 'b', 'c', 'e'], sorter.insert(['b', 'd'], ['a', 'c', 'e'])
  end

  def test_sort
    sorter = InsertionSort.new

    assert_equal [0, 1, 2, 3], sorter.sort([1, 3, 0, 2])
    assert_equal [0, 1, 2, 3, 4, 5, 6, 7], sorter.sort([3, 5, 7, 1, 2, 0, 6, 4])
    assert_equal ['a', 'b', 'c', 'd'], sorter.sort(['d', 'b', 'a', 'c'])
  end
end
