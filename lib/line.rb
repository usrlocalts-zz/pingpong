#Models a line and returns the length
class Line
  def initialize x1, y1, x2, y2
    @x1=x1
    @y1=y1
    @x2=x2
    @y2=y2
  end

  def coordinates
    [@x1,@y1,@x2,@y2]
  end
  def length
    ( Math.sqrt ( @x2 - @x1 )**2 + ( @y2 - @y1 )**2 ).to_i
  end

  def == line2
    [ @x1,@y1,@x2,@y2 ] == line2.coordinates || [ @x2,@y2,@x1,@y1 ] == line2.coordinates
  end
end