require_relative 'primes_numbers_requires'

class PrimesNumbers
  def initialize
    null_cmd = NullCommand.new

    @cmd_executor = CommandsExecutor.new(null_cmd)
  end

  def run
    puts Constants::INVITATION
    while true
      print '> '
      parser = CommandsParser.new(get_command)
      @cmd_executor.execute(parser)
    end
  end

  private

  def get_command
    gets.chomp
  end
end
