
require('sinatra')
require('sinatra/reloader')
require('./lib/anagram.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagramFunction') do
  word1 = params.fetch('word1')
  word2 = params.fetch('word2')
  @output = 'word1'.anagram('word2')
  erb(:anagram)
end
