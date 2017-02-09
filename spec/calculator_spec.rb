require "calculator.rb"

describe Calculator do

  describe "add" do
    let(:calc) { Calculator.new }

    it "should properly add positive integers" do
      expect( calc.add(1, 3) ).to eq(4)
    end

    it "should properly add negative integers" do
      expect( calc.add(1, -3) ).to eq(-2)
    end

    it "should properly add positive floats" do
      expect( calc.add(1.5, 3.2) ).to be_within(0.1).of(4.7)
    end

    it "should properly add negative floats" do
      expect( calc.add(2.5, -3.1) ).to be_within(0.1).of(-0.6)
    end
  end
end