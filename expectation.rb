class Expectation < Struct.new(:subject)
  def to(condition)
    raise AssertionError unless condition.met?(subject)
  end
end

class AssertionError < StandardError
end
