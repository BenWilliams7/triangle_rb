
require('sinatra')
require('sinatra/reloader')
require('./lib/new_project.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
