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
end
