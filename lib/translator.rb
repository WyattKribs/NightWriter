require './lib/dictionary'
class Translator

  attr_reader :input, :output
  def initialize(argument1, argument2)
    @input = argument1
    @output = argument2
    @dictionary = Dictionary.new
  end


  def welcome
    # require 'pry' ; binding.pry
    "Created #{@output} containing #{count} characters"
  end

  def read_input
    File.read(@input).chomp
  end

  def count
    read_input.length
  end

  def translate
    braille_message = []
    read_input.split('').map do |character|
      @dictionary.braille_hash.map do |letter|
        # require 'pry' ; binding.pry
        if letter[0] == character
          braille_message << letter[1]
        end
      end
    end
    braille_message.flatten
  end
end
