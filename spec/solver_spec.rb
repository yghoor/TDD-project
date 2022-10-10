require_relative '../lib/solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context '#new' do
    it 'returns a Solver object' do
      expect(@solver).to be_an_instance_of(Solver)
    end
  end

  context '#factorial' do
    it 'takes one number as an argument and returns its factorial' do
      expect(@solver.factorial(4)).to eq(24)
    end

    it 'returns 1 if the argument is 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'raises an exception if the argument is not a positive number' do
      expect(@solver.factorial(-3)).to eq('Error: cannot apply factorial to a negative number')
    end

    it 'raises an exception if the argument is not an integer' do
      expect(@solver.factorial(3.2)).to eq('Error: cannot apply factorial to a non-integer value')
    end
  end
end