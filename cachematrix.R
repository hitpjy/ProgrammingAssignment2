## Put comments here that give an overall description of what your
## functions do
## These are the functions combined to cache matrix so that it could
## compute inverse matrix.

## Write a short comment describing this function
## makeCacheMatrix is a function that creates a matrix object to cache it's inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Computes the inverse of the returned by makecachematrix.

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv     
  ## Return a matrix that is the inverse of 'x'
}
