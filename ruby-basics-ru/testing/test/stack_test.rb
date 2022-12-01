# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  unit = Stack.new

  def test_one
    unit = Stack.new
    assert((unit.to_a == []) && (unit.empty? == true) && (unit.size == 0))
  end

  def test_two
    unit = Stack.new
    unit.push! 'ruby'
    unit.push! 'php'
    unit.push! 'java'
    assert((unit.to_a == ['ruby', 'php', 'java']) && (unit.empty? == false) && (unit.size == 3))
  end

  def test_three
    unit = Stack.new
    unit.push! 'ruby'
    unit.push! 'php'
    unit.push! 'java'
    unit.pop!
    assert((unit.to_a == ['ruby', 'php']) && (unit.size == 2))
  end

  def test_four
    unit = Stack.new
    unit.push! 'ruby'
    unit.push! 'php'
    unit.push! 'java'
    unit.clear!
    assert((unit.to_a == []) && (unit.empty? == true))
  end

  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?