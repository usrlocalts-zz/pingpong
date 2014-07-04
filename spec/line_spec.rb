require 'spec_helper'

describe Line do
  context "should have a length" do
    it "length should be 1 for the line (1,1),(2,1)" do
      line = Line.new(1, 1, 2, 1)
      expect(line.length).to eq(1)
    end

    it "length should be 5 for the line (1,2),(4,6)" do
      line = Line.new(1, 2, 4, 6)
      expect(line.length).to eq(5)
    end

    it "length should be 8 for the line (2,6),(9,11)" do
      line = Line.new(2, 6, 9, 11)
      expect(line.length).to eq(8)
    end

  end
  context "length should be 0 " do
    it "for lines with same coordinates (2,2) and (2,2)" do
      line = Line.new(2, 2, 2, 2)
      expect(line.length).to eq(0)
    end
  end

  context "equality" do

    it "lines (1,1),(2,4) and (1,1),(2,4) should be equal" do
      line1 = Line.new(1, 1, 2, 4)
      line2 = Line.new(1, 1, 2, 4)
      expect(line1).to eq(line2)
    end

    it "lines (1,8),(3,5) and (2,3),(9,9) should not be equal" do
      line1 = Line.new(1, 8, 3, 5)
      line2 = Line.new(2, 3, 9, 9)
      expect(line1).to_not eq(line2)
    end

    it "lines (2,4),(7,8) and (7,8),(2,4) should be equal" do
      line1 = Line.new(2, 4, 7, 8)
      line2 = Line.new(7, 8, 2, 4)
      expect(line1).to eq(line2)
    end

  end
end