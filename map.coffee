forEach = (iterable, action) ->
        action iterable[n] for n in [0..iterable.length-1]

map = (action, arr) ->
        result = []
        apply = (element) ->
                result.push action element
        forEach arr, apply 
        return result

square = (n) ->
        n * n

testArray = [1, 2, 3, 4]
console.log map square, testArray
