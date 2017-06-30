require('sinatra')
require('sinatra/reloader')
require('descriptive_statistics')
require('./lib/word_count')
also_reload('lib/**/*.rb')


  get('/') do
    erb(:form)
  end

  get('/form') do
    word = params.fetch('word')
    @word = params.fetch('sentence').word_count(word)
    erb(:form)
  end
