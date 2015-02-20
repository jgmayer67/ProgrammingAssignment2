## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## create cache matrix, define get and set functions
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}

## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
  ## Return a matrix that is the inverse of 'x'
  #call get function of makecachematrix
  m <- x$getmatrix()
  ##if matrix exists, used saved data and return
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  ##matrix doesn't exist, solve it
  data <- x$get()
  m <- solve(data,...)
  x$setmatrix(m)
  m
}