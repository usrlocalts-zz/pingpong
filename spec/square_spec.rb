require 'spec_helper'

describe Square do

  context 'should have an area' do
    it 'area should be 25' do
      square = Square.new(Coordinate.new(1,1),5)
      expect(square.area).to eq(25)
    end
  end
end