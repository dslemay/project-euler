/*
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below the provided parameter value number.
*/

let multiply = (a, b) => a * b

let add = (a, b) => a + b

let totalOccurrences = (number, occurenceCount) => {
  let multiplyByNum = multiply(number)

  let rec loop = (occurenceNum, data) => {
    if (occurenceNum > occurenceCount) {
      data
    } else {
      add(data, multiplyByNum(occurenceNum)) -> loop(occurenceNum + 1, _) 
    }
  }

  loop(1, 0) 
}

let multiplesOf3And5 = (num: int) => {
  let getTotalOfNum = (n) => totalOccurrences(n, (num - 1) / n)
  add(getTotalOfNum(3), getTotalOfNum(5)) - getTotalOfNum(15)
}
