#!/usr/bin/env ruby

require_relative "app.rb"

def expect value
  ret = yield
  raise StandardError, "Expected #{value}, obtained #{ret}!" unless ret == value
end

#########################################
# Tests for Square class

sq = Geometry::Square.new 1
sq_103 = Geometry::Square.new 103

# Perimeter should be 4 units
expect 4 do
  sq.perimeter
end

# Area should be 1 square unit
expect 1 do
  sq.area
end

# Perimeter should be 412 units
expect 412 do
  sq_103.perimeter
end

# Area should be 10609 square unit
expect 10609 do
  sq_103.area
end

#########################################
# Tests for Circle class

ci = Geometry::Circumference.new 1

# Perimeter should be 2 PI units
expect 2 * Geometry::PI do
  ci.perimeter
end

# Area should be PI square units
expect Geometry::PI do
  ci.area
end
