def translate(words)
  str = ''
  vowel = ['a','e','i','o','u','y']
  captialized
  words.split.each do |word|
    captialized = true if word[0].capitalize == word[0]
    if vowel.include?(word[0])
      str =+ word + "ay" +' '
    else
      word_copy = ''
      word.split(//).each do |char|
        quchecker = word[word_copy.length..word_copy.length+1]
        if quchecker == 'qu'
          word_copy += 'qu'
          break
        end
        break if vowel.include?(char)
        word_copy += char
      end
      appendword = word[word_copy.length..-1]
      appendword.capitalize! if captialized
      str += appendword + word_copy
      str += 'ay' if word[-2..-1] != 'ay'
      str += ' '
    end
  end
  return str[0..-2]
end
