## func.coffee
## functional programming constructs in CoffeeScript

`func` implements the major functional programming constructs
in CoffeeScript. This includes three major functions:

* forEach
* map
* reduce

    debug = true

    root = exports ? this
    root.forEach = forEach
    root.reduce = reduce
    root.map = map

    add = (a, b) ->
      a + b

    forEach = (iterable, action) ->
      return unless iterable?
      action iterable[n] for n in [0..iterable.length-1]

    reduce = (combine, base, array) ->
      return unless array?
      forEach array, (element) -> combine(base, element)
      return base

    map = (action, arr) ->
      return unless arr?
      result = []
      forEach arr, (element) -> result.push action element
      return result

    if debug
      console.log "compile complete on #{Date()}"