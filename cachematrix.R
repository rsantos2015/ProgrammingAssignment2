## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a matrix and finds its inverse

x <- matrix(1:10, nrow = 3, ncol = 3)
makeCacheMatrix <- function(x) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
      setmatrix=setmatrix,
      getmatrix=getmatrix)
}


## Calls the matrix from the cache
cacheSolve <- function(x) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  m<-solve(matrix)
  x$setmatrix(m)
  m
}
