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

def translate_vowels(word)
  word + "ay"
end

def translate_cons(word)
  count_cons = 0
  (0..word.length-1).each do |index|
    if !cons?(word[index])
      break
    end
    count_cons += 1
    if cons?(word[index] + word[index+1])
      count_cons += 1
    end
  end
  word[count_cons..-1] + word[0..count_cons-1] + "ay"
end

def vowels?(letter)
  vowels = "aeiou"
  vowels.include?(letter)
end

def cons?(letter)
  vowels = "aeiou"
  cons = ("a".."z").to_a.reject {|alphabet| vowels.include?(alphabet)} << "qu"
  cons.include?(letter)
end

p translate("square")
