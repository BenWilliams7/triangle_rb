class String
  def anagram(word2)
    word1 = self.downcase.split('')
    anaCheck = word2.split('')
    anaLength = 0
    anaCheck.each do |char|
      if word1.include?(char)
        anaLength += 1
        puts anaLength
      end
    end
    if anaLength == word1.length
      output = "True"
    else
      output = "False"
    end
    output
  end
end
