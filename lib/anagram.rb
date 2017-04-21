class String
  def anagram(word2)
    word1 = self.downcase.split('')
    anaCheck = word2.downcase.split('')
    anaLength = 0
    lackVowels = 0
    anaCheck.each do |char|
      if word1.include?(char)
        anaLength += 1
      end
      if ["a","e","i","o","u","y"].include?(char)
        lackVowels = 1
      end
    end
    if lackVowels == 1
      if anaLength == word1.length && (word1.length == word2.length)
        output = "These words are anagrams"
        if word1.join == word1.join.reverse
        output += " and the first word is also a palindrome!"
        else
          output += " but the first word is not a palindrome"
        end
      else
        if anaLength == 0
          output = "This is not an anagram BUT it is an antigram!"
        else
        output = "This is not an anagram or an antigram"
        end
      end
    elsif lackVowels == 0
      output = "This is not a word because it has no vowels!"
    end
    output
  end
end
