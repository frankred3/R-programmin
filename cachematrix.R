## Put comments here that give an overall description of what your
## functions do

## The makeCacheMatrix functon creates a special "matrix",which contains a list of functions as:
#  1. set the value of matrix 
#  2. get the value of matrix
#  3. set the value of invense
#  4. get the value of invense

makeCacheMatrix <- function(x = matrix()) {
  ain<-NULL
  set<-function(y){
    x<<-y
    ain<<-NULL
  }
  get<-function() x
  setinvense<-function(invense) ain<<-invense
  getinvense<-function() ain
  list(set = set,get = get,
       setinvense = setinvense,getinvense = getinvense)
}


## The cacheSolve function first check if there's the invense. if it is ture, return the value , otherwise caculate right away.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ain<-x$getinvense()
  if(!is.null(ain)){
    message("getting cached data")
    return(ain)
  }
  abc<-x$get()
  ain<-solve(abc,...)
  x$setinvense(ain)
  ain
}
