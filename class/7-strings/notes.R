

x <- 'thisIsGoodPractice'


# 'thisIsGood'
str_sub(x, 1, 10)

index <- str_locate(x, 'thisIsGood')
str_sub(x, index[1], index[2])

# 'practice'
x_lower <- str_to_lower(x)
index <- str_locate(x_lower, 'practice')
str_sub(x_lower, index[1], index[2])

# 'GOOD'
x_upper <- str_to_upper(x)
index <- str_locate(x_upper, 'GOOD')
str_sub(x_upper, index[1], index[2])

# 'thisthisthis'
index <- str_locate(x, 'this')
x_this <- str_sub(x, index[1], index[2])
str_dup(x_this, 3 )

# 'GOODGOODGOOD'
x_upper <- str_to_upper(x)
index <- str_locate(x_upper, 'GOOD')
x_good_upper <- str_sub(x_upper, index[1], index[2])
str_dup(x_good_upper, 3)








x <- 'this_is_good_practice'
y <- c('hello', 'world')


# "hello world"
hw <- paste(y, collapse = " ")

# "***hello world***"
width <- str_length(hw) + 6 # There are 6 *
str_pad(hw, pad = "*", side = "both",  width = width)

# c("this", "is", "good", "practice")
x_vector <- str_split(x, "_")[[1]]
x_vector

# "this is good practice"
x_sentence <- paste(x_vector, collapse = " ")
x_sentence

# "hello world, this is good practice"
paste(hw, x_sentence, sep = ', ')





# 1) reverseString(s): Write a function that returns the
#    string s in reverse order.

test_reverseString <- function() {
    cat("Testing reverseString()...")
    stopifnot(reverseString("aWordWithCaps") == "spaChtiWdroWa")
    stopifnot(reverseString("abcde") == "edcba")
    stopifnot(reverseString("") == "")
    cat("Passed!\n")
}

reverseString <- function(s) {
    if (s == "") { # Special case
        return(s)
    }
    chars <- str_split(s, '')[[1]]
    reversedChars <- rev(chars)
    return(paste(reversedChars, collapse = ''))
}

test_reverseString()


# 2) isPalindrome(s): Write a function that returns TRUE if
#    the string s is a Palindrome and FALSE otherwise.

test_isPalindrome <- function() {
    cat("Testing isPalindrome()...")
    stopifnot(isPalindrome("abcba") == TRUE)
    stopifnot(isPalindrome("abcb") == FALSE)
    stopifnot(isPalindrome("321123") == TRUE)
    cat("Passed!\n")
}

isPalindrome <- function(s) {
    return(s == reverseString(s))
}

test_isPalindrome()











# How many fruit have the string "rr" in it?
sum(str_detect(fruit, 'rr'))

# Which fruit end with string "fruit"?
end_in_fruit <- str_detect(fruit, 'fruit$')
fruit[end_in_fruit]

# Which fruit contain more than one "o" character?
fruit_o_count <- str_count(fruit, 'o')
fruit_multi_o <- fruit_o_count > 1
fruit[fruit_multi_o]







test_sortString <- function() {
    cat("Testing sortString()...")
    stopifnot(sortString("cba") == "abc")
    stopifnot(sortString("abedhg") == "abdegh")
    stopifnot(sortString("AbacBc") == "aAbBcc")
    cat("Passed!\n")
}

sortString <- function(s) {
    chars <- str_split(s, '')[[1]]
    return(paste(str_sort(chars), collapse = ''))
}

test_sortString()



test_areAnagrams <- function() {
    cat("Testing areAnagrams()...")
    stopifnot(areAnagrams("", "") == TRUE)
    stopifnot(areAnagrams("aabbccdd", "bbccddee") == FALSE)
    stopifnot(areAnagrams("TomMarvoloRiddle", "IAmLordVoldemort") == TRUE)
    cat("Passed!\n")
}

areAnagrams <- function(s1, s2) {
    s1 <- str_to_lower(s1)
    s2 <- str_to_lower(s2)
    return(sortString(s1) == sortString(s2))
}

test_areAnagrams()
