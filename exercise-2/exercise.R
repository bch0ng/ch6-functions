# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  return (paste("The difference in lengths is", abs(length(a) - length(b))))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3), c(1,2,3,4))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  a <- length(a)
  b <- length(b)
  if (a > b) {
    return (paste("Your first vector is longer by", a - b, "elements"))
  } else if (a < b) {
    return (paste("Your second vector is longer by", b - a, "elements"))
  } else {
    return ("Both vectors have an equal number of elements")
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1,2,3,4,5), c(1,2,3,4))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer