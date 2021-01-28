cacheSolve<- function(x, ...) {
  # The following function corresponds to the Programming Assignment 2: Lexical Scoping
  # This function corresponds the cache function that is explained in the "MakeCacheMatrix" which  
  # stores the inverse of a Matrix.
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve (m)
  m
}
