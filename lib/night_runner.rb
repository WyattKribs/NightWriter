require './lib/night_writer'
require './lib/dictionary'

night_runner = NightWriter.new(ARGV[0], ARGV[1])

night_runner.start
