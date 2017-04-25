require_relative '../test_helper'

describe PrimesMultiplicator do
  before do
    @primes_multiplicator = PrimesMultiplicator.new
  end

  describe '#multiply' do
    it 'multiply primes and returns triangle matrix' do
      @primes_multiplicator.multiply([2, 3, 5])
      assert_equal([[4, 0, 0], [6, 9, 0], [10, 15, 25]], @primes_multiplicator.primes_multi)
    end
  end
end
