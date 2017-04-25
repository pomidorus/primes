require 'matrix'

class PrimesMultiplicator
  attr_reader :primes_multi

  def initialize
    @primes_multi = []
  end

  def multiply(primes)
    (0..(primes.size - 1)).each do |i|
      row = Array.new(primes.size, 0)
      (0..i).each do |j|
        row[j] = primes[i] * primes[j]
      end
      @primes_multi << row
    end
  end
end
