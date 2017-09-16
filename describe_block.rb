class DescribeBlock
  attr_reader :subject, :tests
  attr_accessor :tabs

  def initialize(subject, tests, tabs = 1)
    @subject = subject
    @tests = tests
    @tabs = tabs
  end

  def run!
    instance_exec(&tests)
  end
end
