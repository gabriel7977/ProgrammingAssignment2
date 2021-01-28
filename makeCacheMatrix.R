makeCacheMatrix <- function(x = numeric()) {
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