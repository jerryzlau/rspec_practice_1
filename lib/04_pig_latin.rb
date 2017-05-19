def translate(string)
  answer = ""
  string.split.each do |word|
    if vowels?(word[0])
      answer += translate_vowels(word) + " "
    elsif cons?(word[0])
      answer += translate_cons(word) + " "
    end
  end
  answer.strip
end

def translate_vowels(string)
  string + "ay"
end

def translate_cons(string)
  count_cons = 0
  (0..string.length-1).each do |index|
    break if !cons?(string[index])
    count_cons += 1
  end
  string[count_cons..-1] + string[0..count_cons-1] + "ay"
end

def vowels?(letter)
  vowels = "aeiou"
  vowels.include?(letter)
end

def cons?(letter)
  vowels = "aeiou"
  cons = ("a".."z").to_a.reject {|alphabet| vowels.include?(alphabet)}
  cons.include?(letter)
end
