## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setinverse <- function(solution) s <<- solution
  getinverse <- function() s
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m<-a$getinverse()
        if(!is.null(m)){
      message("getting cached data")  
          return(m)
        }
        data<-a$get()
        m<-solve(data,...)
        a$setinverse(m)
        m
}