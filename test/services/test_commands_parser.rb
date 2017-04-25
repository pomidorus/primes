require_relative '../test_helper'

describe CommandsParser do
  describe '#parse help' do
    before do
      @command_parser = CommandsParser.new('help')
    end

    it 'returns valid command and args' do
      assert_equal('help', @command_parser.parse)
    end
  end
end
