def fibs(n)
  n < 2 ? n : fibs(n - 1) + fibs(n - 2)
end

7.times do 
  |i| puts(fibs(i)) 
end