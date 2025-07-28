# frozen_string_literal: true

#####################################################################
#
#
#
#####################################################################
def binary_search(numbers)
  raise ArgumentError, 'Array cannot be empty' if numbers.empty?

  numbers[0] if numbers.length == 1
end
