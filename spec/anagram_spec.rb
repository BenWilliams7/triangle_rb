require("./lib/anagram.rb")
require("rspec")
require("pry")

describe "String#anagram" do
  it("Returns false if two words are not anagrams.") do
    expect("ruby".anagram("hard")).to(eq("False"))
  end
  it("Returns true if two words are anagrams.") do
    expect("ruby".anagram("bury")).to(eq("True"))
  end
  it("Returns false if the length is not equal") do
    expect("ruby".anagram("burrito")).to(eq("False"))
  end
  it("Accounts for the possibility that words w/ different cases are still anagrams") do
    expect("RuBy".anagram("bUrY")).to(eq("True"))
  end
end
