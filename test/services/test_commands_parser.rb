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

  describe '#parse generate' do
    before do
      @command_parser = CommandsParser.new('generate 10')
    end

    it 'returns valid command and args' do
      assert_equal('generate', @command_parser.parse)
      assert_equal(['10'], @command_parser.args)
    end
  end
end
