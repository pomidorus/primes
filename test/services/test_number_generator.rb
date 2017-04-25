require_relative '../test_helper'

describe NumberGenerator do
  before do
    @number_generator = NumberGenerator.new
  end

  describe '#generate' do
    it 'generates 10 primes numbers' do
      @number_generator.generate(10)
      assert_equal([2, 3, 5, 7, 11, 13, 17, 19, 23, 29], @number_generator.primes_numbers)
    end
  end
end
