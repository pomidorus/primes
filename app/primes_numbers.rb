require_relative 'primes_numbers_requires'

class PrimesNumbers
  def initialize
    generate_cmd = GenerateNumbers.new
    show_help_cmd = ShowHelp.new
    null_cmd = NullCommand.new

    @cmd_executor = CommandsExecutor.new(null_cmd)
    @cmd_executor.add_command Constants::HELP_CMD, show_help_cmd
    @cmd_executor.add_command Constants::GENERATE_CMD, generate_cmd

    show_help_cmd.cmds = @cmd_executor.commands
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
