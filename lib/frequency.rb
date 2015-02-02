class String
  define_method(:frequency) do |entered_word|
    downcase_string = downcase()
    downcase_word = entered_word.downcase()
    wordy_string = downcase_string.split(" ")
    frequency_count = 0
    wordy_string.each() do |word|
      if word.==(downcase_word)
        frequency_count = frequency_count.+(1)
      end
    end
    frequency_count
  end
end
