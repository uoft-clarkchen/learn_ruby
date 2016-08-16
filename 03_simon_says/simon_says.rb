def echo(string)
  string
end

def shout(string)
  string.upcase!
end

def repeat(string, num = 2)
  ((string + ' ') * num).chomp(' ')
end

def start_of_word(string,num = 1)
  string[0..num-1]
end

def first_word(string)
  return string[/\w*/]
end

def titleize(string)
  # using regex
  # string.gsub!(/\w*/){|match| match.capitalize!}
  str =''
  exception = ['over','the','and']
  string.capitalize!.split.each do |word|
    if !exception.include?(word)
      str += word.capitalize + " "
    else
      str += word + " "
    end

  end
  return str[0..-2]

end
