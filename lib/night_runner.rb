require './lib/night_writer'

night_runner = NightWriter.new(ARGV[0], ARGV[1])

night_runner.start
