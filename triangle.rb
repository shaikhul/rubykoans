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
def invalid_length?(a, b, c)
  a <=0 or b <=0 or c<= 0 
end

def is_triangle?(other_side_len, equal_side_len)
  if other_side_len > equal_side_len
    raise TriangleError, 'Not a triangle'
  end
  true
end

def triangle(a, b, c)
  if invalid_length? a, b, c
    raise TriangleError, 'Invalid side length'
  end

  counter = 0
  if a == b and is_triangle?(c, a)
    counter += 1
  end

  if b == c and is_triangle?(a, b)
    counter += 1
  end

  if c == a and is_triangle?(b, c)
    counter += 1
  end

  if counter >= 2
    :equilateral
  elsif counter == 1
    :isosceles
  else
    :scalene
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
