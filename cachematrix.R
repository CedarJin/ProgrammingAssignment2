## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x<<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse){
    inv <<- inverse
  }
  getinv <- function() inv
  
  return(list(
    set = set,
    get = get, 
    getinverse = getinv,
    setinverse = setinv
  ))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inverse <-x$getinverse()
  if(!is.null(inverse)){
    return(inverse)
  }
    m <- solve(x$get())
    x$setinverse(m)
    return(m)
        ## Return a matrix that is the inverse of 'x'
}
