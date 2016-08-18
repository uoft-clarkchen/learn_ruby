#TODO
def translate(words)
  #sample vowel characters
  vowel = ['a','e','i','o','u','y']
  #final return string rebuild from original string
  final_str = ''
  # split sentence into array of words, loop though words
  words.split.each do |word|
    # check if the word is capitalized
    capitalized = word[0].capitalize == word[0] ? true : false
    # check if the word has punctuation
    punctuation = word.match(/\w*/).to_s == word.match(/.*/).to_s ? "" : word[-1]
    # remove punctuation if word has punctuation
    word = word[0..-2] if word[-1] == punctuation
    # uncapitalized the word
    word[0] = word[0].downcase
    # holds characters moved to the end of the word
    appendcharacterholder = ""
    # check how long is the moved string
    appendlength = 0
    word.each_char do |char|
      appendlength = appendcharacterholder.length
      # special case move "qu" together
      if word[appendlength..appendlength + 1] =~ /(qu|Qu|qU)/
        appendcharacterholder << word[appendlength..appendlength + 1]
        appendlength = appendcharacterholder.length
        appendcharacterholder << 'ay'
        break
      elsif !vowel.include?(char)
        appendcharacterholder << char
      else
        appendcharacterholder << 'ay'
        break
      end
    end
    # concating the words to final returning string
    first_part = capitalized ? word[appendlength..-1].capitalize : word[appendlength..-1]
    puts first_part
    final_str << first_part << appendcharacterholder << punctuation << ' '
  end

  # cut last append space
  return final_str[0..-2]
end
