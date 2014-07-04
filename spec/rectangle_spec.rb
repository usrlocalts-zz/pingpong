require 'spec_helper'

describe Rectangle do

  context 'should return perimeter' do

    it "should return perimter as 4 for coordinates (1,1) and (2,2)" do
      rectangle = Rectangle.new(Coordinate.new(1, 1), (Coordinate.new(2, 2)))
      expect(rectangle.perimeter).to eq(4)
    end

    context "Rectangle with same coordinates" do
      it "returns perimeter 0 when coordinates are  (1,1),(1,1)" do
        rectangle = Rectangle.new(Coordinate.new(1, 1), (Coordinate.new(1, 1)))
        expect(rectangle.perimeter).to eq(0)
      end
    end
  end
end

