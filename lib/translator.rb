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
        if letter[0] == character
          braille_message << letter[1]
        end
      end
    end
    finished_message = ''
    line1 = ''
    line2 = ''
    line3 = ''
    braille_message.each do |letter|
      line1 += letter[0]
      line2 += letter[1]
      line3 += letter[2]
    end
    finished_message = line1 + "\n" + line2 + "\n" + line3
    # require 'pry' ; binding.pry
  end

  def each_slice_40
    
  end

  def read_output
    File.read(@output)
  end

  def write
    File.write(@output, translate)
  end





end
