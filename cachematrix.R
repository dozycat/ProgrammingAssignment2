# Put comments here that give an overall description of what your
# functions do

# Write a short comment describing this function

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

# Write a short comment describing this function

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
