# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'substring_present'

################################################################
# This is the test suite for finding a substring in ruby string
#
# The test cases are written by the minitest framework
# This test case can be run by
#    ruby test_find_substring.rb
################################################################
class TestFindSubstring < Minitest::Test
  def setup
    @string = 'This is a ruby test string to find a subtring'
    @sub_string = 'test'
  end

  def test_empty_string
    assert_raises(RuntimeError) do
      String.new('').substr?('hi')
    end

    assert_raises(RuntimeError) do
      ''.substr?('hi')
    end
  end

  def test_str_length_less_then_two
    assert_equal true, String.new('hj').substr?('h')
    assert_equal true, String.new('hi').substr?('i')
  end

  def test_str_more_than_two_char
    assert_equal true, String.new('hi the').substr?('hi')
    assert_equal true, String.new('hi the main land of the city').substr?('hi the main')
    assert_equal true, String.new('hi the main land of the city').substr?('land')
    assert_equal true, String.new('hi the main land of the city').substr?('nd of')
    assert_equal false, String.new('hi the main land of the city').substr?('burn')
    assert_equal false, String.new('hi the main land of the city').substr?('mains')
  end
end
