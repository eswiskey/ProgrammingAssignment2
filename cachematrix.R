# makeCacheMatrix is a function that returns a list of functions
# Its puspose is to store a martix and a cached value of the inverse of the 
# matrix. 

makeCacheMatrix <- function(x = matrix()) {
 # holds the cached value or NULL if nothing is cached
        # initially nothing is cached so set it to NULL
m<-NULL
  set<-function(y){
  x<<-y
  m<<-NUL
}


# The following function calculates the inverse of a "special" matrix created with 
# makeCacheMatrix
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
