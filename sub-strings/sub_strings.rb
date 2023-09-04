# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(phrase, dict)
  result = Hash.new(0)

  words = phrase.split
  words.each do |word|
    dict.each { |dict_word| result[dict_word] += 1 if word.include? dict_word }
  end

  result
end

p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
