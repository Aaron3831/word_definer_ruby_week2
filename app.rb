require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('pry')

get('/') do
  erb(:index)
end

get('/word_definer') do
  @word_definer = Word.all()
  erb(:word_definer)
end
