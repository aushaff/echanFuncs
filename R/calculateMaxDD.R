calculateMaxDD <- function(cumret) {

  # initialise highwatermark to zero
  highwatermark <- rep(0, length(cumret))

  # initialize drawdowns to zero
  drawdown <- rep(0, length(cumret))

  # initialize drawdown duration to zero
  drawdownduration <- rep(0, length(cumret))

  for(t in 2:length(cumret)) {

    highwatermark[t] <- max(highwatermark[t-1], cumret[t])

    # drawdown on each day
    drawdown[t] <-  (1+highwatermark[t]) / (1+cumret[t])-1

    if (drawdown[t]==0) {
      drawdownduration[t] <- 0
    } else {
      drawdownduration[t] <- drawdownduration[t-1]+1
    }
  }

  # maximum drawdown
  maxDD <- max(drawdown)

  # maximum drawdown duration
  maxDDD <- max(drawdownduration)

  return(c(maxDD, maxDDD))
}
