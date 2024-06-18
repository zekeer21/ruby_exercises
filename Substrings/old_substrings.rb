dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "Howdy partner, sit down! How's it going?"

word_arr = word.downcase.split
word_count = Hash.new(0)

word_arr.each do |str_word|
    dictionary.each do |dict_word|
        if str_word.include?(dict_word)
            if word_count.has_key?(dict_word)
                word_count[str_word] += 1
            else
                word_count[str_word] = 1
            end
        end
    end
end

p word_count

