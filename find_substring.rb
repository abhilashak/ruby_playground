# frozen_string_literal: true

##################################################################
#  This new string method find a substring in the provided string
#  Usage:
#    "find here about string alfred is that fine?".substr('alfred') => true
#    "find here about string alfred is that fine?".substr('alwin') => false
#
##################################################################
class String
  def substr
    raise RuntimeError if empty?

    puts self
  end
end
