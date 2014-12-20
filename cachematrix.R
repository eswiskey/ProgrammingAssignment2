## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 # holds the cached value or NULL if nothing is cached
        # initially nothing is cached so set it to NULL
m<-NULL
  set<-function(y){
  x<<-y
  m<<-NUL
}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("retrieving data")
      return(m)
    }
        ## Return a matrix that is the inverse of 'x'

matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
