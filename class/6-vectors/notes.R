# Loop solution:
isPrime <- function(n) {
    if (n < 2) { return(FALSE) }
    if (n == 2) { return(TRUE) }
    for (i in 2:(n-1)) {
        if ((n %% i) == 0) {
            return(FALSE)
        }
    }
    return(TRUE)
}

# Vector solution
isPrime <- function(n) {
    if (n <= 1) { return(FALSE) }
    if (n == 2) { return(TRUE) }
    # Check if all values can divide evenly into n
    test <- (n %% seq(2, (n-1))) == 0
    if (any(test)) {
        return(FALSE)
    }
    return(TRUE)
}






reverse <- function(x) {
    return(x[seq(length(x), 1, -1)])
}

all(reverseVector(c(5, 1, 3)) == c(3, 1, 5))
all(reverseVector(c('a', 'b', 'c')) == c('c', 'b', 'a'))
all(reverseVector(c(FALSE, TRUE, TRUE)) == c(TRUE, TRUE, FALSE))


# Loop solution
alternatingSum <- function(a) {
    sum <- 0
    for (i in 1:length(a)) {
        if ((i %% 2) == 1) {
            sum = sum + a[i]
        } else {
            sum = sum - a[i]
        }
    }
    return(sum)
}


# No loop solution (one way to do it)
alternatingSum <- function(a) {
    ones <- rep(c(1, -1), length(a))
    ones <- ones[1:length(a)]
    return(sum(ones*a))
}


alternatingSum(c(5,3,8,4)) == (5 - 3 + 8 - 4)
alternatingSum(c(1,2,3)) == (1 - 2 + 3)
alternatingSum(c(0,0,0)) == 0
alternatingSum(c(-7,5,3)) == (-7 - 5 + 3)

