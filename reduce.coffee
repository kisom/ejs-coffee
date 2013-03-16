add = (a, b) ->
        a + b

forEach = (iterable, action) ->
        action iterable[n] for n in [0..iterable.length-1]

reduce = (combine, base, array) ->
        apply = (element) ->
                base = combine(base, element)
        forEach array, apply
        return base

testArray = [1, 4, 9, 16]
console.log reduce add, 0, testArray
