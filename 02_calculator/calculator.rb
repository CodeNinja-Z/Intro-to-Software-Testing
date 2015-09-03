def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(num)
  sum = 0
  num.each do |n|
    sum += n
  end
  sum
end

def multiply(num1, num2)
  num1 * num2
end

def factorial(num)
  factorial = 1
  if num == 0
    return num
  elsif num == 1
    return num
  else
    for num in (num).downto(1)
      factorial *= num
    end
    return factorial
  end
end