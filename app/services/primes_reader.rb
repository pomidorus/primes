class PrimesReader
  attr_reader :primes

  def initialize
    @primes = []
  end

  def read
    f = File.open('primes.txt', 'r')

    str_primes = f.readline.strip.split
    @primes = str_primes.map{|e| e.to_i}

    f.close
  end
end
