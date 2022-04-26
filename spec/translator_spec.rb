require 'rspec'
require './lib/translator'
require './lib/dictionary'

describe Translator do
  before(:each) do
    @message = File.open(ARGV[0], "r")
    @dictionary = Dictionary.new
    @translator = Translator.new
  end

  it "exists" do
    expect(@translator).to be_a(Translator)
  end

  it "can turn roman letters into braille" do

  end
end
