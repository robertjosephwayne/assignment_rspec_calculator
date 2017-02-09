require "calculator.rb"

describe Calculator do
  let(:calc) { Calculator.new }

  # The add method properly adds numbers,
  # whether positive or negative, integer or float.
  describe "add" do

    it "properly adds positive integers" do
      expect(calc.add(1, 3)).to eq(4)
    end

    it "properly adds negative integers" do
      expect(calc.add(1, -3)).to eq(-2)
    end

    it "properly adds positive floats" do
      expect(calc.add(1.5, 3.2)).to be_within(0.1).of(4.7)
    end

    it "properly adds negative floats" do
      expect(calc.add(2.5, -3.1)).to be_within(0.1).of(-0.6)
    end

  end

  # The subtract method properly subtracts numbers,
  # whether positive, negative, integer or float.
  describe "subtract" do

    it "properly subtracts positive integers" do
      expect(calc.subtract(3, 16)).to eq(-13)
    end

    it "properly subtracts negative integers" do
      expect(calc.subtract(-3, -16)).to eq(13)
    end

    it "properly subtracts positive floats" do
      expect(calc.subtract(4.0, 9.0)).to be_within(0.1).of(-5.0)
    end

    it "properly subtracts negative floats" do
      expect(calc.subtract(-9.0, -14.0)).to be_within(0.1).of(5.0)
    end

  end

  # The multiply method properly multiplies numbers
  describe "multiply" do

    it "properly multiplies two positive integers" do
      expect(calc.multiply(2, 6)).to eq(12)
    end

    it "properly multiplies two negative integers" do
      expect(calc.multiply(-3, -6)).to eq(18)
    end

    it "properly multiplies two positive floats" do
      expect(calc.multiply(4.0, 7.0)).to be_within(0.1).of(28.0)
    end

    it "properly multiplies two negative floats" do
      expect(calc.multiply(-5.0, -9.0)).to be_within(0.1).of(45.0)
    end

    it "properly multiplies a positive integer and a positive float" do
      expect(calc.multiply(23, 6.0)).to be_within(0.1).of(138.0)
    end

    it "properly multiplies a positive integer and a negative float" do
      expect(calc.multiply(23, -6.0)).to be_within(0.1).of(-138.0)
    end

    it "properly multiplies a negative integer and a positive float" do
      expect(calc.multiply(-9, 4.0)).to be_within(0.1).of(-36.0)
    end

  end

  # The divide method properly divides numbers
  # raises an ArgumentError if the second argument is zero,
  # returns an integer if there is no remainder
  # and a float if there is.
  describe "divide" do

  end

  # The pow method properly raises numbers to their power
  # including negative and decimal powers
  describe "pow" do

  end

  # The sqrt method properly determines square roots for positive numbers
  # raises errors for negative inputs,
  # returns integers for round roots
  # or 2-digit decimals for non-round roots.
  describe "sqrt" do

  end

  # The memory= function stores an object in memory,
  # overwriting any previous object in memory
  describe "memory=" do

  end

  # The memory function returns the object in memory
  # and clears memory when returned,
  # and starts as nil.
  describe "memory" do

  end

  # If the stringify input is passed to a new calculator
  # the outputs of each of the computational functions above
  # is turned into a string.
  describe "stringify" do

  end

end