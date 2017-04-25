require_relative 'primes_numbers_requires'

class PrimesNumbers
  def initialize
    number_generator = NumberGenerator.new
    primes_reader = PrimesReader.new
    primes_multiplicator = PrimesMultiplicator.new
    table_viewer = TableViewer.new

    generate_cmd = GenerateNumbers.new(number_generator)
    show_m_table_cmd = ShowMultiplicationTable.new(primes_reader, primes_multiplicator, table_viewer)
    show_help_cmd = ShowHelp.new
    null_cmd = NullCommand.new

    @cmd_executor = CommandsExecutor.new(null_cmd)
    @cmd_executor.add_command Constants::HELP_CMD, show_help_cmd
    @cmd_executor.add_command Constants::GENERATE_CMD, generate_cmd
    @cmd_executor.add_command Constants::SHOW_M_TABLE_CMD, show_m_table_cmd

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
