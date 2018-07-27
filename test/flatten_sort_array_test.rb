require 'test/unit'
require_relative "../flatten_sort_array"

class FlattenSortArrayTest < Test::Unit::TestCase

  def test_flatten_and_sort
    assert_equal(FlattenSortArray.flatten_and_sort([[]]), [])
    assert_equal(FlattenSortArray.flatten_and_sort([[], []]), [])
    assert_equal(FlattenSortArray.flatten_and_sort([[], [1]]), [1])
    assert_equal(FlattenSortArray.flatten_and_sort([[], [], [], [2], [], [1]]), [1, 2])
    assert_equal(FlattenSortArray.flatten_and_sort([[3, 2, 1], [7, 9, 8], [6, 4, 5]]), [1, 2, 3, 4, 5, 6, 7, 8, 9])
    assert_equal(FlattenSortArray.flatten_and_sort([[1, 3, 5], [100], [2, 4, 6]]), [1, 2, 3, 4, 5, 6, 100])
    assert_equal(FlattenSortArray.flatten_and_sort([[111, 999], [222], [333], [444], [888], [777], [666], [555]]), [111, 222, 333, 444, 555, 666, 777, 888, 999])
    assert_equal(FlattenSortArray.flatten_and_sort([[9, 7, 5, 3, 1], [8, 6, 4, 2, 0], [], [1]]), [0, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    assert_equal(FlattenSortArray.flatten_and_sort([[1], [], [1], [], [], [-1, -2, -1], [0, 3], [1], [2]]), [-2, -1, -1, 0, 1, 1, 1, 2, 3])
    assert_equal(FlattenSortArray.flatten_and_sort([[], [], [64], [], [504, 503], [4096], [], [303], [202], [2500], [], [100]]), [64, 100, 202, 303, 503, 504, 2500, 4096])
    assert_equal(FlattenSortArray.flatten_and_sort([[90, 81, 72], [63, 54, 35], [], [46], [27, 18, 0]]), [0, 18, 27, 35, 46, 54, 63, 72, 81, 90])
    assert_equal(FlattenSortArray.flatten_and_sort([[1], [], [1], [1], [0], [-1], [], [0], [-1], [0], [-1]]), [-1, -1, -1, 0, 0, 0, 1, 1, 1])
    assert_equal(FlattenSortArray.flatten_and_sort([[-9, -8, -7, -6, -5, -4, -3, -2, -1]]), [-9, -8, -7, -6, -5, -4, -3, -2, -1])
    assert_equal(FlattenSortArray.flatten_and_sort([[9, 8, 7, 6, 5, 4, 3, 2, 1]]), [1, 2, 3, 4, 5, 6, 7, 8, 9])
  end

end