dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
words = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
    word_hash = Hash.new(0)
    dictionary.each do |strings|
        string.downcase.split.each do |chars|
            if chars.include?(strings)
                word_hash[strings] += 1
            end
        end
    end
    word_hash
end

p substrings(words,dictionary)