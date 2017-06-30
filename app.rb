require('sinatra')
require('sinatra/reloader')
require('descriptive_statistics')
require('./lib/word_count')
also_reload('lib/**/*.rb')


  get('/') do
    erb(:form)
  end

  get('/word_count') do
    word = params.fetch('word')
    @word = params.fetch('sentence').word_count(word)
    erb(:count)
  end
