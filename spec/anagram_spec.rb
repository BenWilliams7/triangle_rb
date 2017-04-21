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
end
