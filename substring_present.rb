# frozen_string_literal: true

##################################################################
#  This new string method find a substring in the provided string
#  Usage:
#    "find here about string alfred is that fine?".substr('alfred') => true
#    "find here about string alfred is that fine?".substr('alwin') => false
#
##################################################################
class String
  def substr?(sub_str)
    raise RuntimeError if empty?

    @stored_value = String.new

    # string length and substring length are same
    @stored_value = self if strip.length == sub_str.strip

    # set stored value
    # string length and substring length are different
    sub_str.each_char do |char|
      @stored_value << char

      @stored_value[0] = '' unless @stored_value[0] == char
    end

    # find match
    match_stored_value?(sub_str)
  end

  def match_stored_value?(sub_str)
    @stored_value == sub_str
  end
end
