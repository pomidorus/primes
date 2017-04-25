class NumberGenerator
  attr_reader :primes_numbers

  def initialize
    @primes_numbers = [2]
    @number = 1
  end

  def generate(n)
    raise ArgumentError, "Expected an integer, got #{n}" unless n.respond_to?(:integer?) && n.integer?
    while @primes_numbers.length < n do
      @primes_numbers << @number if is_prime?(@number)
      @number += 2
    end

    puts "First #{n} prime numbers generated"
  end

  def save
    f = File.open('primes.txt', 'w')

    f.puts @primes_numbers.join(' ')

    f.close
  end

  private

  def is_prime?(number)
    return false if number < 2

    top = Math.sqrt(number).to_i
    (2..top).each do |x|
      q, r = number.divmod x
      return true if q < x
      return false if r == 0
    end

    true
  end
end
