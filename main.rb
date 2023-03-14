# frozen_string_literal: true

def top_words(text)

  words = text.downcase.gsub(/[^a-z0-9| ]/, '').split(" ")


  word_count = Hash.new(0)
  words.each { |word| word_count[word] += 1 }


  top_words = word_count.sort_by { |k, v| -v }.first(3)


  top_words.map { |k, v| k }
end


text = "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."
puts top_words(text) # ["the", "lazy", "dog"]