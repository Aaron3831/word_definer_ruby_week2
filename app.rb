require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('pry')

get('/') do
  @words_list = Word.all()
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

get('/words/:id') do
  @words_list = Word.find(params.fetch("id"))
  erb(:definition_form)
end

get('/word/:id')  do
  @word = Word.find(params.fetch("id"))
  erb(:definition_form)
end

post('/word/:id') do
  @word = Word.find(params.fetch("id"))
  definition = params.fetch("definition-add")

  definition = Definition.new({:definition_add=> definition})

  @word.add_definition(definition)
  erb(:definition_form)
end

post('/words/:id') do
  @word = Word.find(params.fetch("id"))
  definition = params.fetch("definition-add")

  definition = Definition.new({:definition_add=> definition})

  @word.add_definition(definition)
  erb(:definition_form)
end

get('/definition_form/:id')  do
  @word = Word.find(params.fetch("id"))
  erb(:definition_form)
end
