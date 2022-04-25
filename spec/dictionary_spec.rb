require 'rspec'
require './lib/dictionary'

describe Dictionary do
  before(:each) do
    @dictionary = Dictionary.new
  end


  it "is an instance of Dictionary" do
    expect(@dictionary).to be_a(Dictionary)
  end


end
