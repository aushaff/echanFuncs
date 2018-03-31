#' @title lag1
#' @description lags prices by 1
#' @note needs to be modified to take a vector as well as a dataframe/matrix
#'

lag1 <- function(x) {

  if (is.numeric(x[1,1])) {

    # # populate the first entry with NaN
    y1 <- rep(NA, ncol(x))
    y2 <- x[1:nrow(x)-1, ]
    y <- rbind(y1, y2)

    #y <- lapply(y, function(x) as.numeric(as.character(x)))

  } else if (is.character(x[1,1])) {

    # # populate the first entry with ''
    y1 <- rep("", ncol(x))
    y2 <- x[1:nrow(x)-1, ]
    y <- rbind(y1, y2)

  } else {
      stop('Can only be numeric or char array')
  }
return(y)
}

# if (isnumeric(x))
#   y=[NaN(1,size(x,2));x(1:end-1, :)]; % populate the first entry with NaN
# elseif (ischar(x))
# y=[repmat('',[1 size(x,2)]);x(1:end-1, :)]; % populate the first entry with ''
# else
#   error('Can only be numeric or char array');
# end
