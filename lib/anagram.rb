class String
  def anagram(word2)
    word1 = self.downcase.split('')
    anaCheck = word2.downcase.split('')
    anaLength = 0
    anaCheck.each do |char|
      if word1.include?(char)
        anaLength += 1
      end
    end
    if anaLength == word1.length && (word1.length == word2.length)
      output = "These words are anagrams"
      if word1.join == word1.join.reverse
      output += " and the first word is also a palindrome!"
    else
      output += " but the first word is not a palindrome"
    end
    else
      output = "This is not an anagram"
    end
    output
  end
end
