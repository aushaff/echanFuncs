# fill data in a 2-dim array with NaN's with the previous value.
# From the matlab function fillMissingData by Ernest Chan
fill_missing_data <- function(prices) {

  filled_prices <- prices

  for(t in 2:size(filled_prices, 1)) {

    missData <- !is.finite(filled_prices[t, ])
    filled_prices[t, missData] <- filled_prices[t-1, missData]

  }
return(filled_prices)

}

# function [filledPrices]=fillMissingData(prices)
# % [filledPrices]=fillMissingData(prices)
# %
# % written by:
# % Ernest Chan
# %
# % Author of ?Quantitative Trading:
# % How to Start Your Own Algorithmic Trading Business?
# %
# % ernest@epchan.com
# % www.epchan.com
#
# filledPrices=prices;
# for t=2:size(filledPrices, 1)
#     missData=~isfinite(filledPrices(t, :));
#     filledPrices(t, missData)=filledPrices(t-1, missData);
# end
