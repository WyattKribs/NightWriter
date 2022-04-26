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
    expect(@translator.read_input).to eq("hello world")
  end

  it "can count" do
    expect(@translator.count).to eq(11)
  end

  it "can translate" do
    expect(@translator.translate).to eq("0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...")
  end

  it "can write onto a file" do
    @translator.write
    expect(@translator.read_output).to eq("0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...")
  end

  it "can return to a new line" do

  end

end
