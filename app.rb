require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/form') do
  @sender = params.fetch('sender').scrabble()
  erb(:form)
end
