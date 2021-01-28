makeCacheMatrix <- function(x = Matrix()) {
# The following function corresponds to the Programming Assignment 2: Lexical Scoping
# This function calculates the inverse of a matrix (IM).
#However it first checks to see if the IM has already been calculated. 
#If this is the case, it gets the inverse  from the "cache function" (CacheSolve.R) and skips the computation. 
# Otherwise, it calculates the IM and sets the value of the IM the cache via the setmean function.
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<-solve
  getinverse <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}
