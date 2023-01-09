class Triangle
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
    valid_triangle_check
  end

  def valid_triangle_check
    raise ArgumentError, "Sides must be greater than 0" if x <= 0 || y <= 0 || z <= 0
    unless x + y > z && y + z > x && x + z > y
      raise ArgumentError, "Invalid triangle side lengths"
    end
  end

  def kind
    if [x, y, z].uniq.length == 1
      'equilateral'
    elsif [x, y, z].uniq.length == 2
      'isosceles'
    else
      'scalene'
    end
  end
end
