## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  
  set_matrix <- function(def_value) {
    
    x <<- def_value
    
    inv <<- NULL
    
  }
  
  get_matrix <- function() x
  
  set_inverse <- function(inverse) inv <<- inverse
  
  get_inverse <- function() inv
  
  list(set_matrix = set_matrix, get_matrix = get_matrix, 
       set_inverse = set_inverse, get_inverse = get_inverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
