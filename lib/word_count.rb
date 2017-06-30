class String
  define_method(:word_count) do |word|
    new_sentence = self.split()
    counter = 0
     new_sentence.each do |sentence|
      if word == sentence
        counter = counter + 1
      end
    end
    counter
 end
end
#apps functionality
