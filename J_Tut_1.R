install.packages("astsa") # install it ... you'll be asked to choose the closest CRAN mirror
require(astsa)            # then load it (has to be done at the start of each session)

data(jj)  # load the data - you don't have to do this anymore with astsa, but you do in general
jj        # print it to the screen
jj[1]       # the first element
jj[84]      # the last element
jj[1:4]     # the first 4 elements
length(jj)  # the number of elements 

jjm = as.matrix(jj)
dim(jjm) 

options(digits=2)  # the default is 7, but it's more than I want now
?options           # to see your options (it's the help file)
?rnorm             # we're using it on the next line
(zardoz = ts(rnorm(48), start=c(2293,6), frequency=12))
(oz = window(zardoz, start=2293, end=c(2295,12)))
