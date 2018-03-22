# a)
xmin <- c(23, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)
# b)
xmax - xmin
# c)
min <- mean(xmin)
max <- mean(xmax)
# d)
xmin[min > xmin]
# e)
xmin[min < xmax]
# f)
names(xmin) <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
names(xmax) <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
# g)
temperatures <- data.frame(
  xmin = xmin,
  xmax = xmax
)
# h)
temperatures <- within(temperatures,{xminFahrenheit = xmin*9/5 + 32})
# i)
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
