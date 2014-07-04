require 'spec_helper'

describe Coordinate do

  context "equality" do

    it '(1,2) and (1,2) should be equal' do
      coordinate1 = Coordinate.new(1,2)
      coordinate2 = Coordinate.new(1,2)
      expect(coordinate1).to eq(coordinate2)
    end
    it '(1,2) and (2,3) should be equal' do
      coordinate1 = Coordinate.new(1,2)
      coordinate2 = Coordinate.new(2,3)
      expect(coordinate1).to_not eq(coordinate2)
    end
  end

end