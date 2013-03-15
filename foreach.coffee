forEach = (iterable, action) ->
        action iterable[n] for n in [0..iterable.length-1]

print = (msg) -> console.log msg
testArray = ["foo", "bar", "bar", "quux"]
testArray2 = [1, 4, 9, 16]
genAccum = ->
        res = 0
        (n) ->
                res += n
a = genAccum()

forEach testArray, print
forEach testArray2, a
console.log a(0)
