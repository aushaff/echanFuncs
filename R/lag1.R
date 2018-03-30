lag1 <- function(x) {

  if (is.numeric(x)) {

    # # populate the first entry with NaN
    # y <- [NaN(1,size(x,2)); x[1:length(x)-1, )]

  } else if (is.character(x)) {

    # # populate the first entry with ''
    # y=[repmat('', [1 size(x,2)]); x(1:end-1, :)]
  } else {
      error('Can only be numeric or char array')
  }
returnt(y)
}
# if (isnumeric(x))
#   y=[NaN(1,size(x,2));x(1:end-1, :)]; % populate the first entry with NaN
# elseif (ischar(x))
# y=[repmat('',[1 size(x,2)]);x(1:end-1, :)]; % populate the first entry with ''
# else
#   error('Can only be numeric or char array');
# end
