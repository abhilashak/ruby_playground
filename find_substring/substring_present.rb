# frozen_string_literal: true

##################################################################
#  This new string method find a substring in the provided string
#  Condition: Without using Ruby's built in methods like `include?`
#  Usage:
#    "My name is alfred. What is your name?".substr('alfred') => true
#    "My name is alfred. What is your name?".substr('at is y') => true
#    "My name is alfred. What is your name?".substr('alwin') => false
#
##################################################################
class String
  def substr?(sub_str)
    raise RuntimeError if empty?

    # If substring is longer than the main string, it can't be found
    return false if sub_str.length > length

    # Sliding window approach
    window_size = sub_str.length

    # Slide the window from left to right
    (0..(length - window_size)).each do |start_pos|
      # Extract the current window
      current_window = self[start_pos, window_size]

      # Check if current window matches the substring
      return true if current_window == sub_str
    end

    false
  end
end
