backshift <- function(day, x) {

  stopifnot(day >= 0)
  y <- c(rep(NaN, day),x[1:(length(x)-day)])

}

# function y=backshift(day,x)
# % y=backshift(day,x)
# assert(day>=0);
# y=[NaN(day,size(x,2), size(x, 3));x(1:end-day,:, :)];
