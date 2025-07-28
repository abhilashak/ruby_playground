# frozen_string_literal: true

#####################################################################
# Given an array of numbers and a target value, this algorithm finds
# then index of the target in the given array. If not found writes
# 'Not found'
#####################################################################
def binary_search(numbers, target)
  raise ArgumentError, 'Provide an array of numbers' unless numbers.is_a?(Array)
  return 'Not found' if numbers.empty?

  if numbers.length == 1
    return numbers[0] == target ? 0 : 'Not found'
  end

  mid = (numbers.length / 2).to_i # calculate mid position

  return mid if target == numbers[mid]

  if target < numbers[mid]
    return binary_search(numbers[0...mid], target)
  elsif target > numbers[mid]
    return binary_search(numbers[(mid + 1)..], target)
  end

  'Not found'
end
