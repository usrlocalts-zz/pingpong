#Represents a coordinate and checks for equality with another coordinate

class Coordinate

  attr_reader :x
  attr_reader :y


  def initialize x, y
    @x = x
    @y = y
  end



  def == coordinate2
    [@x,@y] == [coordinate2.x,coordinate2.y]
  end
end