require "calculator.rb"

describe Calculator do

  # The add method properly adds numbers,
  # whether positive or negative, integer or float.
  describe "add" do

    it "properly adds positive integers" do
      expect(Calculator.new.add(1, 3)).to eq(4)
    end

    it "properly adds negative integers" do
      expect(Calculator.new.add(1, -3)).to eq(-2)
    end

    it "properly adds positive floats" do
      expect(Calculator.new.add(1.5, 3.2)).to be_within(0.1).of(4.7)
    end

    it "properly adds negative floats" do
      expect(Calculator.new.add(2.5, -3.1)).to be_within(0.1).of(-0.6)
    end

  end

  # The subtract method properly subtracts numbers,
  # whether positive, negative, integer or float.
  describe "subtract" do

    it "properly subtracts positive integers" do
      expect(Calculator.new.subtract(3, 16)).to eq(-13)
    end

    it "properly subtracts negative integers" do
      expect(Calculator.new.subtract(-3, -16)).to eq(13)
    end

    it "properly subtracts positive floats" do
      expect(Calculator.new.subtract(4.0, 9.0)).to be_within(0.1).of(-5.0)
    end

    it "properly subtracts negative floats" do
      expect(Calculator.new.subtract(-9.0, -14.0)).to be_within(0.1).of(5.0)
    end

  end

  # The multiply method properly multiplies numbers.
  describe "multiply" do

    it "properly multiplies two positive integers" do
      expect(Calculator.new.multiply(2, 6)).to eq(12)
    end

    it "properly multiplies two negative integers" do
      expect(Calculator.new.multiply(-3, -6)).to eq(18)
    end

    it "properly multiplies two positive floats" do
      expect(Calculator.new.multiply(4.0, 7.0)).to be_within(0.1).of(28.0)
    end

    it "properly multiplies two negative floats" do
      expect(Calculator.new.multiply(-5.0, -9.0)).to be_within(0.1).of(45.0)
    end

    it "properly multiplies a positive integer and a positive float" do
      expect(Calculator.new.multiply(23, 6.0)).to be_within(0.1).of(138.0)
    end

    it "properly multiplies a positive integer and a negative float" do
      expect(Calculator.new.multiply(23, -6.0)).to be_within(0.1).of(-138.0)
    end

    it "properly multiplies a negative integer and a positive float" do
      expect(Calculator.new.multiply(-9, 4.0)).to be_within(0.1).of(-36.0)
    end

  end

  # The divide method properly divides numbers
  # raises an ArgumentError if the second argument is zero,
  # returns an integer if there is no remainder
  # and a float if there is.
  describe "divide" do

    it "properly divides two positive integers" do
      expect(Calculator.new.divide(2, 6)).to be_within(0.1).of(0.33)
    end

    it "properly divides two negative integers" do
      expect(Calculator.new.divide(-3, -6)).to be_within(0.1).of(0.5)
    end

    it "properly divides two positive floats" do
      expect(Calculator.new.divide(4.0, 7.0)).to be_within(0.1).of(0.57)
    end

    it "properly divides two negative floats" do
      expect(Calculator.new.divide(-5.0, -9.0)).to be_within(0.1).of(0.55)
    end

    it "properly divides a positive integer and a positive float" do
      expect(Calculator.new.divide(23, 6.0)).to be_within(0.1).of(3.86)
    end

    it "properly divides a positive integer and a negative float" do
      expect(Calculator.new.divide(23, -6.0)).to be_within(0.1).of(-3.86)
    end

    it "properly divides a negative integer and a positive float" do
      expect(Calculator.new.divide(-9, 4.0)).to be_within(0.1).of(-2.25)
    end

    it "raises an ArgumentError if the second argument is zero" do
      expect{ Calculator.new.divide(-9, 0) }.to raise_error(ArgumentError)
    end

    it "returns an integer if there is no remainder" do
      expect(Calculator.new.divide(15.0, 5.0)).to be_an(Integer)
    end

    it "returns a float if there is a remainder" do
      expect(Calculator.new.divide(16.0, 3.0)).to be_a(Float)
    end

  end

  # The pow method properly raises numbers to their power
  # including negative and decimal powers.
  describe "pow" do

    it "properly raises positive numbers to a positive integer power" do
      expect(Calculator.new.pow(2, 3)).to eq(8)
    end

    it "properly raises positive numbers to a negative integer power" do
      expect(Calculator.new.pow(2, -3)).to be_within(0.1).of(0.125)
    end

    it "properly raises negative numbers to a positive integer power" do
      expect(Calculator.new.pow(-9, 2)).to eq(81)
    end

    it "properly raises negative numbers to a negative integer power" do
      expect(Calculator.new.pow(-4, -2)).to be_within(0.1).of(0.0625)
    end

    it "properly raises positive numbers to a positive decimal power" do
      expect(Calculator.new.pow(16, 0.5)).to be_within(0.1).of(4)
    end

    it "properly raises positive numbers to a negative decimal power" do
      expect(Calculator.new.pow(25, -0.6)).to be_within(0.1).of(0.145)
    end

  end

  # The sqrt method properly determines square roots for positive numbers
  # raises errors for negative inputs,
  # returns integers for round roots
  # or 2-digit decimals for non-round roots.
  describe "sqrt" do

    it "raises errors for negative inputs" do
      expect{ Calculator.new.sqrt(-3) }.to raise_error(ArgumentError)
    end

    it "returns integers for round roots" do
      expect(Calculator.new.sqrt(16)).to eq(4)
    end

    it "returns 2-digit decimals for non-round roots" do
      expect(Calculator.new.sqrt(17)).to be_within(0.1).of(4.1)
    end

  end

  # The memory= function stores an object in memory,
  # overwriting any previous object in memory.
  describe "memory=" do

    it "stores an object in memory" do
      calc = Calculator.new
      calc.memory = 16
      expect(calc.memory).to eq(16)
    end

    it "overwrites any previous object in memory" do
      calc = Calculator.new
      calc.memory = 16
      calc.memory = 34
      expect(calc.memory).to eq(34)
    end

  end

  # The memory function returns the object in memory
  # and clears memory when returned,
  # and starts as nil.
  describe "memory" do

    it "starts as nil" do
      expect(Calculator.new.memory).to be_nil
    end

    it "returns the object in memory" do
      calc = Calculator.new
      calc.memory = 34
      expect(calc.memory).to eq(34)
    end

    it "clears the memory when returned" do
      calc = Calculator.new
      calc.memory = 34
      calc.memory
      expect(calc.memory).to be_nil
    end

  end

  # If the stringify input is passed to a new calculator
  # the outputs of each of the computational functions above
  # is turned into a string.
  describe "stringify" do

    it "causes a new calculator to return a string as the output of the add function" do
      expect(Calculator.new(true).add(1, 2)).to be_a(String)
    end

    it "causes a new calculator to return a string as the output of the subtract function" do
      expect(Calculator.new(true).subtract(1, 2)).to be_a(String)
    end

    it "causes a new calculator to return a string as the output of the multiply function" do
      expect(Calculator.new(true).multiply(1, 2)).to be_a(String)
    end

    it "causes a new calculator to return a string as the output of the divide function" do
      expect(Calculator.new(true).divide(1, 2)).to be_a(String)
    end

    it "causes a new calculator to return a string as the output of the pow function" do
      expect(Calculator.new(true).pow(1, 2)).to be_a(String)
    end

    it "causes a new calculator to return a string as the output of the sqrt function" do
      expect(Calculator.new(true).sqrt(2)).to be_a(String)
    end

  end

end