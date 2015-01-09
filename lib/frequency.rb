class String
  define_method(:frequency) do |new_string|
    entered_word = self
    frequency_count = 1
    wordy_string = new_string.split(",")
    wordy_string.each() do |word|

      if entered_word == word
        frequency_count

      end
    end

    frequency_count = frequency_count.+(1)
end
end
