def fibs(integer)
  fib1 = 0
  fib2 = 1
  results = []
  if integer < 1
    puts "Invalid input"
  elsif integer ==1
    results << fib1
  elsif integer == 2
    results << fib1
    results << fib2
  else
    results << fib1
    results << fib2
    until results.size == integer do
      temp = fib2
      fib2 = fib2+fib1
      fib1 = temp
      results << fib2
    end
    results
  end
end

def fibs_rec(integer, array = [])

  return array = [0] if integer == 1
  return array = [0, 1] if integer == 2
  array = fibs_rec(integer - 1)
  array.push(array[-2] + array[-1])

end
p fibs(8)
p fibs_rec(8)