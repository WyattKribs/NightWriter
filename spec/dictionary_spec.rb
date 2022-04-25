require 'rspec'
require './lib/dictionary'

describe Dictionary do
  before(:each) do
    ARGV[0] = './spec/reader_test/reader_input.txt'
    ARGV[1] = './spec/reader_test/reader_output.txt'
    @dictionary = Dictionary.new
  end


  it "is an instance of Dictionary" do
    expect(@dictionary).to be_a(Dictionary)
  end

  it "can convert english to braille" do
    


end
