require 'rspec'
require './lib/translator'
require './lib/dictionary'

describe Translator do
  before(:each) do
    # @message = File.open(ARGV[0], "r")
    # @read_message = @message.read.chomp
    # @braille = File.open(ARGV[1], "w")
    @translator = Translator.new("message.txt", "braille.txt")

  end

  it "exists" do
    expect(@translator).to be_a(Translator)
  end

  it "has a working welcome message" do
    expect(@translator.welcome).to eq('Created braille.txt containing 11 characters')
  end

  it "can read input" do
    exepct(@translator.read_input).to eq("words")
  end

end
