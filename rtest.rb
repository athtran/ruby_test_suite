require 'byebug'
require 'colorize'

require_relative 'expectation'
require_relative 'condition'
require_relative 'test'
require_relative 'describe_block'

def describe(subject, &tests)
  puts subject
  DescribeBlock.new(subject, tests).run!
end

def it(description, &test)
  Test.new(self, description, test).evaluate!
end

def context(description, &tests)
  puts "#{'    '*self.tabs}description"
  self.tabs += 1
  instance_exec(&tests)
end

def expect(subject)
  Expectation.new(subject)
end

def eq(object)
  EqualityCondition.new(object)
end

def not_eq(object)
  InequalityCondition.new(object)
end
