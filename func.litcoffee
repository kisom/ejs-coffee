## func.coffee
## functional programming constructs in CoffeeScript

	add = (a, b) ->
	        a + b

	forEach = (iterable, action) ->
			if typeof iterable == 'undefined' || iterable == null
				return
	        action iterable[n] for n in [0..iterable.length-1]

	reduce = (combine, base, array) ->
	        apply = (element) ->
	                base = combine(base, element)
	        forEach array, apply
	        return base
