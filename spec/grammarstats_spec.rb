require 'grammarstats'

RSpec.describe GrammarStats do
  it "returns true when capital letter and punctuation" do
    text1 = GrammarStats.new()
    expect(text1.check("Hi. My name is Paul!")).to eq [true]
  end
    
  it "returns false when capital letter but no punctuation" do
    text1 = GrammarStats.new()
    expect(text1.check("Hi. My name is Paul")).to eq [false]
  end
    
  it "returns false when punctuation but no capital letter" do
  text1 = GrammarStats.new()
    expect(text1.check("hi. My name is Paul!")).to eq [false]
  end

  context "Special situations when string is empty or nil" do
    it "returns error when input is nil" do
      text1 = GrammarStats.new()
      expect {text1.check(nil)}.to raise_error "There is no input!"
    end
  
    it "returns 'String is empty! Try again!' when string is empty" do
      text1 = GrammarStats.new()
      expect(text1.check("")).to eq "String is empty! Try again!"
    end
  end
  
  it "returns the percentage of 'good' texts checked" do
    text1 = GrammarStats.new
    text1.check("Hi. My name is Paul!")
    text1.check("Hi. My name is Paul.")
    text1.check("Hi. My name is Paul")
    text1.check("Hi. My name is Paul?")
    text1.check("hi. My name is Paul")
    text1.check("hi. My name is Paul.")
    expect(text1.percentage_good).to eq 50
  end
end