
require('sinatra')
require('sinatra/reloader')
require('./lib/anagram.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do
  @output = params.fetch('anagram').to_i.anagram()
  erb(:anagram)
end
