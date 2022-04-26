require './lib/dictionary'
class Translator

  attr_reader :input, :output
  def initialize(argument1, argument2)
    @input = argument1
    @output = argument2
  end


  def welcome
    # require 'pry' ; binding.pry
    "Created #{@output} containing #{@input.length} characters"
  end

  def read_input
    File.read(@input).chomp
  end

end
