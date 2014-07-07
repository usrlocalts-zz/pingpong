# models a rectangle to return its perimeter, area
class Rectangle
  def initialize (coordinate1, coordinate2)
    @coordinate1 = coordinate1
    @coordinate2 = coordinate2

  end

  def collaborating_lines
    line1 = Line.new(Coordinate.new(@coordinate1.x,@coordinate1.y),Coordinate.new(@coordinate1.x,@coordinate2.y))
    line2 = Line.new(Coordinate.new(@coordinate1.x,@coordinate2.y),Coordinate.new(@coordinate2.x,@coordinate2.y))
    [line1,line2]
  end

  def perimeter
    lines = collaborating_lines
    ( lines[0].length+lines[1].length ) * 2
  end

  def area
    lines = collaborating_lines
    lines[0].length*lines[1].length
  end

  def self.square left_top_coordinate,side_length
    right_bottom_coordinate = Coordinate.new(left_top_coordinate.x + side_length , left_top_coordinate.y + side_length)
    Rectangle.new(left_top_coordinate,right_bottom_coordinate)
  end

end