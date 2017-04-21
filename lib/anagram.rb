class String
  def anagram(word2)
    word1 = self.downcase.split('')
    anaCheck = word2.split('')
    anaCheck.each do |var|
      if word1.include?(var)
        output = "True"
      end
    end
  end
end
