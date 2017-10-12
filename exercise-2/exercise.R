# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  return(paste("The difference in lengths is", abs(length(a) - length(b))))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3), c(1,2,3,4))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  diff <- length(a) - length(b)
  if (diff > 0) {
    sentence <- (paste("Your first vector is longer by", abs(diff), 
                       "elements"))
  } else if (diff < 0) {
    sentence <-  (paste("Your second vector is longer by", abs(diff), 
                        "elements"))
  } else {
    sentence <- ("Both vectors have an equal number of elements")
  }
  return(sentence)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1,2,3,4,5), c(1,2,3,4))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference2 <- function(a, b) {
  diff <- length(a) - length(b)
  if (diff > 0) {
    sentence <- (paste("Your first vector", substitute(a), "is longer by", abs(diff), 
                       "elements"))
  } else if (diff < 0) {
    sentence <-  (paste("Your second vector", substitute(b), "is longer by", abs(diff), 
                        "elements"))
  } else {
    sentence <- paste("Both vectors", substitute(a), "and", substitute(b), "have an equal number of elements")
  }
  return(sentence)
}
lol <- c(1:5)
lel <- c(1:5)
DescribeDifference2(lol, lel)
