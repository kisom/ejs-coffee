count = 0
total = 0
total += n for n in [1..10]
console.log total

# alternatively
i = 0
total = 0
accum = -> (total += i; i += 1)
accum() while (i <= 10)
console.log total
