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
      output = "True"
    else
      output = "False"
    end
    output
  end
end
