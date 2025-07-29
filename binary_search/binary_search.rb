# frozen_string_literal: true

#####################################################################
# Binary Search Algorithm
#
# Given a sorted array of numbers and a target value, this algorithm finds
# the index of the target in the given array. If not found returns nil.
#
# @param numbers [Array<Numeric>] A sorted array of numbers
# @param target [Numeric] The value to search for
# @return [Integer, nil] The index of the target if found, nil otherwise
# @raise [ArgumentError] If numbers is not an array or target is nil
#####################################################################
def binary_search(numbers, target)
  # Validate input parameters
  validate_input(numbers, target)

  # Handle empty array case
  return nil if numbers.empty?

  # Handle single element case
  return (numbers.first == target ? 0 : nil) if numbers.length == 1

  # Perform binary search
  perform_binary_search(numbers, target)
end

def validate_input(numbers, target)
  raise ArgumentError, 'First argument must be an array' unless numbers.is_a?(Array)

  raise ArgumentError, 'Target cannot be nil' if target.nil?

  return if target.is_a?(Numeric)

  raise ArgumentError, 'Target must be a numeric value'
end

def perform_binary_search(numbers, target)
  mid = numbers.length / 2

  return mid if target == numbers[mid]

  if target < numbers[mid]
    search_left_half(numbers, target, mid)
  else
    search_right_half(numbers, target, mid)
  end
end

def search_left_half(numbers, target, mid)
  left_half = numbers[0...mid]
  return nil if left_half.empty?

  binary_search(left_half, target)
end

def search_right_half(numbers, target, mid)
  right_half = numbers[(mid + 1)..]
  return nil if right_half.empty?

  result = binary_search(right_half, target)
  result.nil? ? nil : result + mid + 1
end
