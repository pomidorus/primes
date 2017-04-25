class NumberGenerator
  def initialize
    @primes_numbers = [2]
    @primes = [2, 3, 5, 7, 11]
    @number = 1
  end

  def generate(n)
    raise ArgumentError, "Expected an integer, got #{n}" unless n.respond_to?(:integer?) && n.integer?
    while @primes_numbers.length <= n do
      @primes_numbers << @number if is_prime?(@number)
      @number += 2
    end

    puts "First #{n} prime numbers generated"
  end

  def save

  end

  private

  def is_prime?(number)
    return false if number < 2
    @primes.each do |num|
      q, r = number.divmod num
      return true if q < num
      return false if r == 0
    end
  end
end
