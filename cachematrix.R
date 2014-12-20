# There are two functions.

# makeCacheMatrix is to create Object of cached-matrix
# return a list consist of set,get function to set ,get X(matrix)
# and setsolve function to set inverse-matrix getselve function to get cached inverse-matrix.

makeCacheMatrix <- function(x = matrix()) {
	
	m <-NULL

	# set matrix x
	set <- function(y){
		x <<- y
		m <<-NULL
	}
	# get matrix x
	get <- function() x

	# set function
	setsolve <- function(solve) m <<- solve

	# get  function
	getsolve <- function() m

	list(set = set,get = get,setsolve = setsolve,getsolve = getsolve)

}

# cacheSolve function is to cal the inverse-matrix of input x(x is a object created by function makeCacheMatrix ).

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    m <-x$getsolve()
    if(!is.null(m)){
    	message("getting cached data")
    	return(m)
    }

    data<- x$get()
    m<-solve(data,...)
    x$setsolve(m)
    m
}
