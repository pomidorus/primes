require_relative 'command'

class ShowMultiplicationTable < Command
  def initialize(primes_reader, primes_multiplicator, table_viewer)
    super Constants::SHOW_M_TABLE_DESCRIPTION
    @primes_reader = primes_reader
    @primes_multiplicator = primes_multiplicator
    @table_viewer = table_viewer
  end

  def execute(args)
    @primes_reader.read
    @primes_multiplicator.multiply(@primes_reader.primes)
    @table_viewer.view(@primes_reader.primes, @primes_multiplicator.primes_multi)
  end
end
