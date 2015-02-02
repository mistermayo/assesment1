require ('sinatra')
require ('sinatra/reloader')
require ('./lib/frequency.rb')
require('./lib/frequency')

get ('/') do
  erb(:form)
end

get ('/results') do
  wordy_string = params.fetch('wordy_string')
  entered_word = params.fetch('entered_word')
  @wordy_string = wordy_string
  @entered_word = entered_word
  @frequency_count = @wordy_string.frequency(@entered_word)
  erb(:results)
end
