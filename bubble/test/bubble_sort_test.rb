require 'minitest/autorun'
require 'minitest/pride'
require './bubble/lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_it_exists
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_sort_once_works_until_current_is_nil
    sorter = BubbleSort.new

    assert_equal [2, 1, 3, 4], sorter.sort_once([4, 2, 1, 3])
    assert_equal [1, 2, 3, 4], sorter.sort_once([2, 1, 3, 4])
    assert_equal ['c', 'd', 'b', 'a', 'e'], sorter.sort_once(['d', 'c', 'e', 'b', 'a'])
  end

  def test_sort_will_organize_entire_array
    sorter = BubbleSort.new

    assert_equal [1, 2, 3, 4], sorter.sort([4, 2, 1, 3])
    assert_equal [1, 2, 3, 4, 5, 6, 7], sorter.sort([4, 2, 3, 1, 7, 5, 6])
    assert_equal ['a', 'b'], sorter.sort(['b', 'a'])
    assert_equal ['a', 'b', 'c', 'd', 'e'], sorter.sort(['b', 'c', 'e', 'd', 'a'])
  end

end


  # def test_sort_using_recursion
  #   skip
  #   sorter_1 = BubbleSort.new
  #   sorter_2 = BubbleSort.new
  #   sorter_3 = BubbleSort.new
  #
  #   assert_equal [1, 2, 3, 4], sorter_1.sort([4, 2, 1, 3])
  #   assert_equal [1, 2, 3, 4, 5, 6, 7], sorter_2.sort([4, 2, 3, 1, 7, 5, 6])
  #   assert_equal ['a', 'b'], sorter_3.sort(['b', 'a'])
  # end
