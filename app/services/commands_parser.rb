class CommandsParser
  attr_reader :args

  def initialize cmd
    @args = []
    @cmd = cmd
  end

  def parse
    case @cmd
      when /#{Constants::HELP_CMD}/
        Constants::HELP_CMD
      when /#{Constants::GENERATE_CMD}/
        Constants::GENERATE_CMD
      else
        Constants::NOT_FOUND_MSG
    end
  end
end
