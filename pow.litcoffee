## pow.coffee

This is a short CoffeeScript program to calculate a number taken to a
certain power. The `power` function takes two arguments: `base` and
`exponent`. For example, if we took the value of x to the power of y,
`base` would represent x, and `exponent` would represent y. A more
concrete example: `2 ** 10` (which should be 1024), `base` would be
`2` and `exponent` would be `10`.

        pow = (base, exponent) ->
          working = 1
          exponentiate = ->
            working *= base
            exponent -= 1
          exponentiate() while (exponent > 0)
          working

Let's look at an example:

        console.log pow(2, 10)

