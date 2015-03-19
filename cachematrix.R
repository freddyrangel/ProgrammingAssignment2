## Code should be written clearly enough where comments are not needed.
## Comments are an anti-pattern.
## That being said, the assignment calls for comments...

## This function returns a list with a functions that has certain getter
## and setter functions.
makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y) {
          x <<- y
          inverseMatrix <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inverseMatrix <<- inverse
  getInverse <- function() inverseMatrix
  list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}

## This function takes the makeCacheMatrix function and checks to see
## if the inverseMatrix has been cached. If not, then it gets and sets
## the inverse.
cacheSolve <- function(x, ...) {
  inverseMatrix <- x$getInverse()
  if(!is.null(inverseMatrix)) {
          message("getting cached data")
          return(inverseMarix)
  }
  data <- x$get()
  inverseMatrix <- solve(data)
  x$setInverse(inverseMatrix)
  inverseMatrix

}
