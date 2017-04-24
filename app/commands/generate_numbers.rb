require_relative 'command'

class GenerateNumbers < Command
  def initialize
    super Constants::GENERATE_DESCRIPTION
  end

  def execute(args)
    puts 'generate numbers'
  end
end
