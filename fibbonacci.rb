def fibonacci( n )
    return  n  if n <= 1
    fibonacci( n - 1 ) + fibonacci( n - 2 )
end

def fibonacci_short(n)
   n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 )
end

puts fibonacci_short( 10 )
puts fibonacci( 10 )
