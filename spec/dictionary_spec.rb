require 'rspec'
require './lib/dictionary'

describe Dictionary do
  before(:each) do
    # ARGV[0] = './spec/reader_test/reader_input.txt'
    # ARGV[1] = './spec/reader_test/reader_output.txt'
    @dictionary = Dictionary.new
  end


  it "is an instance of Dictionary" do
    expect(@dictionary).to be_a(Dictionary)
  end

  it "reads each line seperately" do
    expect(@dictionary.line1["a"]).to  eq("0.")
    expect(@dictionary.line2["a"]).to  eq("..")
    expect(@dictionary.line3["a"]).to  eq("..")
  end







end
