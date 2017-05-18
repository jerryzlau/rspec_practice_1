def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n=2)
  answer = ""
  n.times do
    answer += string + " "
  end
  answer.strip
end

def start_of_word(string, n)
  string[0..n-1]
end

def first_word(string)
  string.split.first
end

def titleize(string)
  answer = ""
  string.split.each_with_index do |n, idx|
    if idx == 0
      answer << n[0].upcase + n[1..-1] + " "
    elsif n == "and" || n == "the" || n == "over"
      answer << n + " "
    else
      answer << n[0].upcase + n[1..-1] + " "
    end
  end
  answer.strip
end
