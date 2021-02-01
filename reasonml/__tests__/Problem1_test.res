open Jest
open Problem1

describe("Problem1 multiplesOf3And5()", () => {
  testAll(
    "calculates multiples of 3 and 5 for a given number",
    list{(10, 23), (49, 543), (1000, 233168), (8456, 16687353), (19564, 89301183)},
    ((input, expected)) => {
      open Expect
      expect(multiplesOf3And5(input)) |> toBe(expected)
    },
  )
})
