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
      when /#{Constants::GENERATE_CMD}\s(\d+)/
        @args.push($1)
        Constants::GENERATE_CMD
      when /#{Constants::GENERATE_CMD}/
        puts 'Please provide N prime numbers for this command -  `generate N`'
        Constants::NOT_FOUND_MSG
      else
        Constants::NOT_FOUND_MSG
    end
  end
end
