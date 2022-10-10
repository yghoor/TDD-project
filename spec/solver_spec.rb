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
end