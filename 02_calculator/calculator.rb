def add(number1,number2)
  number1 + number2
end

def subtract(number1, number2)
  number1 - number2
end

def sum(array)
  return 0 if array.empty?
  array.reduce(:+)
end

def multiply(*numbers)
  numbers.reduce(:*)
end

def facterial(number)
  return 0 if number == 0
  return 1 if number == 1
  return number * (facterial(number-1))
end
