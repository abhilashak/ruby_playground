# frozen_string_literal: true

#####################################################################
#
#
#
#####################################################################
def binary_search(numbers, target)
  raise ArgumentError, 'Array cannot be empty' if numbers.empty?
  raise ArgumentError, 'Target cannot be empty' unless target

  target if numbers.length == 1
end
