
word1 = self.push('')
if word1.include(word2)
  output = true
end

word1 = self.to_s.downcase.split(" ").join("")
i = 0
length = word1.length
lengthMeas = length.to_f./(2).ceil
results = []
while i <= lengthMeas do
  results.push(word1[i].==(word1[length.-(i.+(1))]))
  i += 1
end
