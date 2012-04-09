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
def triangle(a, b, c)
  # Raise error on nontriangles
  ordered = [a, b, c].sort
  if ordered[0] <= 0
    raise TriangleError, "Triangles cannot have zero or negative length sides"
  end
  
  if ordered[0] + ordered[1] <= ordered[2]
    raise TriangleError, "Triangles must be closed"  
  end

  [:equilateral, :isosceles, :scalene][[a, b, c].uniq.length - 1]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
