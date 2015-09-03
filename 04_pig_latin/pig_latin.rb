def translate(words)
  words = words.split(' ') # [banana]
  vowel = ['a', 'e', 'i', 'o']
  words.map! do |word|
    chars = word.split('') #['b', 'a', 'n', 'a', 'n', 'a']
    chars.map do |char|
      if !vowel.include?(char)
        chars.shift
        chars << char
      else
        break
      end
    end
    chars << 'ay'
    word = chars.join  # "ananabay"
  end
  words.join(' ')
  # words = words.join(' ')
  # words
end

# %i(first second third) => [:first, :second, :third] 
# %w(first second third) => ["first", "second", "third"]

