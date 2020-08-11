def fibs(n)
  i = 0
  j = 1
  while i <= n
    puts i
    i, j = j, i + j
  end
end

fibs(7)