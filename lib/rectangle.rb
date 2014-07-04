# models a rectangle to return its perimeter
class Rectangle
  def initialize (coordinate1, coordinate2)
    @coordinate1 = coordinate1
    @coordinate2 = coordinate2

  end
  
  def perimeter
    line1 = Line.new(Coordinate.new(@coordinate1.x,@coordinate1.y),Coordinate.new(@coordinate1.x,@coordinate2.y))
    line2 = Line.new(Coordinate.new(@coordinate1.x,@coordinate2.y),Coordinate.new(@coordinate2.x,@coordinate2.y))
    ( line1.length+line2.length ) * 2
  end

  def area
    line1 = Line.new(Coordinate.new(@coordinate1.x,@coordinate1.y),Coordinate.new(@coordinate1.x,@coordinate2.y))
    line2 = Line.new(Coordinate.new(@coordinate1.x,@coordinate2.y),Coordinate.new(@coordinate2.x,@coordinate2.y))
     line1.length*line2.length
  end
end