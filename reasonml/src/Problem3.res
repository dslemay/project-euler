/*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the given number?
*/

let calculatePrimeFactors = num => {
  let calculate = () => {
    let primeFactors = []
    let pushFactor = Js.Array2.push(primeFactors)
    let break = ref(false)
    let currComparisonValue = ref(2)
    let currMaxValue = ref(num)

    while !break.contents {
      if currComparisonValue.contents === currMaxValue.contents {
        let _ = pushFactor(currMaxValue.contents)
        break := true
      } else if mod(currMaxValue.contents, currComparisonValue.contents) === 0 {
        let _ = pushFactor(currComparisonValue.contents)
        currMaxValue := currMaxValue.contents / currComparisonValue.contents
      } else {
        currComparisonValue := currComparisonValue.contents + 1
      }
    }

    primeFactors
  }

  switch num {
  | n when n <= 0 => []
  | n when n <= 3 => [n]
  | _ => calculate()
  }
}

let largestPrimeFactor = num =>
  switch calculatePrimeFactors(num) {
  | [] => None
  | arr => Some(arr[Js.Array.length(arr) - 1])
  }
