## NOTE: readability: leave some blank linkes between the code to make it more readable

# a)
xmin <- c(23, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

# b)
xmax - xmin
## NOTE: do not assign to built-in objects like min or max. To see what they normally
## do, run
?min

# c)
min <- mean(xmin)
max <- mean(xmax)

# d)
xmin[min > xmin]
# e)
## Wrong subsetting
xmin[max < xmax]

# f)
## NOTE: not DRY (don't repeat yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmin) <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
names(xmax) <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
# g)
temperatures <- data.frame(
  xmin = xmin,
  xmax = xmax
)
# h)
temperatures <- within(temperatures, {
	xminFahrenheit = xmin*9/5 + 32
})

# i)
## Do not use block is function calls

Fahrenheit <- data.frame({xminFahrenheit = xmin*9/5 + 32})

# j)
MonFriFahrenheit <- data.frame(
  Max_Fahr = xmax[seq(1:5)]*9/5 + 32,
  Min_Fahr = xmin[seq(1:5)]*9/5 + 32
)
# j2
NoSatSunFahrenheit <- data.frame(
  Max_Fahr =xmax[-(6:7)]*9/5 +32,
  Min_Fahr = xmin[-(6:7)]*9/5 + 32 )

## Easier way to do this:

Fahrenheit[1:5, ]
Fahrenheit[-(6:7), ]

