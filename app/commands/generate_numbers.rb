require_relative 'command'

class GenerateNumbers < Command
  def initialize(numbers_generator)
    super Constants::GENERATE_DESCRIPTION
    @numbers_generator = numbers_generator
  end

  def execute(args)
    @numbers_generator.generate(args[0].to_i)
  end
end
