require ('sinatra')
require ('sinatra/reloader')
require ('./lib/frequency.rb')
require ('pry')

get('/form') do
  erb(:form)
end

get('/show') do
  @display = params.fetch('word').frequency(params.fetch('frequency'))
  erb(:show)
end
