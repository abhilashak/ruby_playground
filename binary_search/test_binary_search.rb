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
      []
    end
  end
end
