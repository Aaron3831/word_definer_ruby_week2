require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('pry')

get('/') do
  erb(:index)
end

get('/words') do
  @words_list = Word.all()
  erb(:words)
end
