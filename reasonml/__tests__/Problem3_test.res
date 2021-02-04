open Jest
open Problem3

testAll(
  "calculatePrimeFactors() returns an array of prime factors for a number",
  list{
    (-2, []),
    (0, []),
    (1, [1]),
    (2, [2]),
    (3, [3]),
    (4, [2, 2]),
    (6, [2, 3]),
    (13195, [5, 7, 13, 29]),
  },
  ((input, expected)) => {
    open Expect
    expect(calculatePrimeFactors(input)) |> toEqual(expected)
  },
)

testAll(
  "largestPrimeFactor() returns an optional largest prime factor for a number",
  list{
    (-2, None),
    (0, None),
    (1, Some(1)),
    (2, Some(2)),
    (3, Some(3)),
    (5, Some(5)),
    (7, Some(7)),
    (8, Some(2)),
    (13195, Some(29)),
  },
  ((input, expected)) => {
    open Expect
    expect(largestPrimeFactor(input)) |> toBe(expected)
  },
)
