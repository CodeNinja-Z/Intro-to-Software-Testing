def echo(str)
  str
end

def shout(str)
  str.upcase
end

def shoult(str)
  str.upcase
end

def repeat(str, num=1)
  if num == 1
    return str + ' ' + str
  else
    result = Array.new(num, str).join(' ')
  end
  result
end

def start_of_word(str, index)
      # Start position
  str[0, index]
         # length

  # str = 'This is a test'
  # srt[-4,4] # => 'test'
        # Start from the end of string
end

def first_word(str)
  str.split(' ')[0]
end

def titleize(str)
  adverbs = ['and', 'over', 'the']
  str = str.split(' ')
  if str[0] == 'the'
    str[0] = 'The'
  end
  str.each do |word|
    word.capitalize! if !adverbs.include?(word)
  end
  str.join(' ')
end