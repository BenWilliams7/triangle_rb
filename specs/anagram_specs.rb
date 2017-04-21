require("./lib/anaram.rb")
require("rspec")
require("pry")

describe "Fixnum#anagram" do
  it("Check if two words are anagrams.") do
    expect("ruby".anagram()).to(eq("These words are anagrams."))
  end

end
