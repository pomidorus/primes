require_relative '../test_helper'

describe CommandsExecutor do
  before do
    @cmds_executor = CommandsExecutor.new(NullCommand.new)
  end

  describe '#add_command' do
    it 'adds a new command to the executor' do
      @cmds_executor.add_command('help', ShowHelp.new)
      assert_equal 1, @cmds_executor.commands.count
    end
  end
end
