#Models a square and calculates area
class Square < Rectangle
  def initialize left_top_coordinate, side_length
    right_bottom_coordinate = Coordinate.new(left_top_coordinate.x + side_length , left_top_coordinate.y + side_length)
    super left_top_coordinate, right_bottom_coordinate
  end
end