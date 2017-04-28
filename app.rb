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

get('/word/new')  do
  erb(:word_form)
end

post('/words')  do
  @words_list = Word.all()
  word = params.fetch("word-add")
  word = Word.new({:word_add=> word})
  word.save()
  erb(:words)
end

post('/contacts/:id') do
  @words_list = Word.find(params.fetch("id"))
  word = params.fetch("word-add")

  word = Word.new({:word_add=> word})
  @word.add_word(word)
  erb(:word)
end
