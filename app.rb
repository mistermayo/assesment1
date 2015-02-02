require ('sinatra')
require ('sinatra/reloader')
require ('./lib/frequency.rb')
require('./lib/frequency')

get ('/') do
  erb(:form)
end
