## The functions create a matrix, find the inverse, cache it, and then 
## retrieve the cached inverese or find the inverse

## The first function makes a matrix and finds and caches the inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverese,
       getinverse = getinverse)
}


## The second function retrieves the cached inverse or finds the inverse

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- inverse(data, ...)
  x$setinverse(i)
  i
}
