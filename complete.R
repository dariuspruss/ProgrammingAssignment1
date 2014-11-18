complete <- function(directory, id = 1:332) {
	fullfiles <- list.files(directory, full.names=TRUE)
	nobs <- data.frame()
	for (i in id) { 
		dat <- read.csv(fullfiles[i])
		clean <- dat[complete.cases(dat), ]
		nobs <- c(nobs, nrow(clean))  

	}
	results <- data.frame(cbind(id, nobs))
	results
}