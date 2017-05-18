def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  return 0 if array == []
  array.reduce(:+)
end

def multiply(array)
  return 0 if array == []
  array.reduce(:*)
end

def power(a, b)
  a ** b
end

def factorial(input)
  return 1 if input == 0
  (1..input).reduce(:*)
end
