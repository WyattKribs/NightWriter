require './lib/translator'
require './lib/dictionary'
@translator = Translator.new(ARGV[0], ARGV[1])

puts @translator.welcome
@translator.translate
@translator.write
