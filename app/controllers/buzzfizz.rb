def fizz_buzz(n)
  if n % 15 == 0
    puts "Fizz Buzz"
  elsif n % 3 == 0
    puts "Fizz"
  elsif n % 5 == 0
    puts "Buzz"
  else
    n.to_s
  end
end

fizz_buzz(6)
fizz_buzz(20)
fizz_buzz(30)