require("./lib/anagram.rb")
require("rspec")
require("pry")

describe "String#anagram" do
  it("Return true if two words are anagrams.") do
    expect("ruby".anagram("bury")).to(eq("True"))
  end

end
