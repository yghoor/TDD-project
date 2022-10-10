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

    it 'takes one number as an argument and returns 1 if it is 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'takes one number as an argument and raises an exception if it is not a positive number' do
      expect(@solver.factorial(-3)).to eq('Error: cannot apply factorial to a negative number')
    end

    it 'takes one number as an argument and raises an exception if it is not an integer' do
      expect(@solver.factorial(3.2)).to eq('Error: cannot apply factorial to a non-integer value')
    end
  end

  context '#reverse' do
    it 'takes a string as an argument and returns the string reversed' do
      expect(@solver.reverse('apple')).to eq('elppa')
    end
  end

  context '#fizzbuzz' do
    it 'takes an integer as an argument and returns \'fizz\' if it is divisible by 3' do
      expect(@solver.fizzbuzz(12)).to eq('fizz')
    end

    it 'takes an integer as an argument and returns \'buzz\' if it is divisible by 5' do
      expect(@solver.fizzbuzz(20)).to eq('buzz')
    end

    it 'takes an integer as an argument and returns \'fizzbuzz\' if it is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'takes an integer as an argument and returns it as a string if it is divisible by neither 3 nor 5' do
      expect(@solver.fizzbuzz(19)).to eq('19')
    end
  end
end