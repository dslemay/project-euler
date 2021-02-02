open Jest
open Problem2

describe("Problem2 Even Fibonacci Numbers", () => {
  testAll(
    "returns the even Fibonacci numbers who do do exceed a value",
    list{(8, 10), (10, 10), (34, 44), (60, 44), (1000, 798), (100000, 60696), (4000000, 4613732)},
    ((input, expected)) => {
      open Expect
      expect(fiboEvenSum(input)) |> toBe(expected)
    },
  )
})
