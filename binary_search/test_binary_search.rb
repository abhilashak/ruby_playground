# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'binary_search'

########################################################################
#
#
#
########################################################################
class TestBinarySearch < Minitest::Test
  def setup; end

  def test_empty_array
    assert_raises ArgumentError do
      binary_search
    end
    assert_raises ArgumentError do
      binary_search([])
    end
  end

  def test_array_with_length_one
    assert_equal 1, binary_search([1], 1)
    assert_equal 2, binary_search([2], 2)
  end

  def _test_array_with_length_two
    assert_equal 2, binary_search([1, 2], 2)
  end
end
