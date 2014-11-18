corr <- function(directory, threshold = 0) {

	fullfiles <- list.files(directory, full.names=TRUE)
	results <- vector("numeric", length = 0)
	for (i in 1:length(fullfiles)) { 
		dat <- read.csv(fullfiles[i])
		clean <- dat[complete.cases(dat), ]
		nobs <- nrow(clean)
		if (nobs > threshold) {
			results <- c(results, cor(clean$nitrate, clean$sulfate))
		}
	}
results

}