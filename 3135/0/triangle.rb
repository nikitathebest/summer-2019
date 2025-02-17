# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
# :reek:FeatureEnvy
# :reek:ClassVariable
# :reek:TooManyStatements
# :reek:UncommunicativeMethodName
# :reek:UncommunicativeParameterName
# :reek:UncommunicativeVariableName
def triangle(a_length, b_length, c_length)
  # WRITE THIS CODE
  a_length, b_length, c_length = [a_length, b_length, c_length].sort
  raise TriangleError if a <= 0 || a + b <= c

  %i[equilateral isosceles scalene].fetch([a_length, b_length, c_length].uniq.size - 1)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
