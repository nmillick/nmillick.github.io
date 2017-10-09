Earthquake Magnitude App
========================================================
author: Nigel Millick
date: Oct 9, 2017

Description
========================================================

The goal of this app is to take the "Quakes" dataset in the base R package and allow the user to manipulate latitudes
and longitudes in order to predict the magnitude of a future quake.

The third slide will highlight our exploratory analysis, including a summary table and correlation matrix.

The fourth slide illustrates the regression model used.

And finally, the fifth slide includes link to the app itself and supporting documentation.

Exploratory
========================================================


```
      lat              long           depth            mag      
 Min.   :-38.59   Min.   :165.7   Min.   : 40.0   Min.   :4.00  
 1st Qu.:-23.47   1st Qu.:179.6   1st Qu.: 99.0   1st Qu.:4.30  
 Median :-20.30   Median :181.4   Median :247.0   Median :4.60  
 Mean   :-20.64   Mean   :179.5   Mean   :311.4   Mean   :4.62  
 3rd Qu.:-17.64   3rd Qu.:183.2   3rd Qu.:543.0   3rd Qu.:4.90  
 Max.   :-10.72   Max.   :188.1   Max.   :680.0   Max.   :6.40  
    stations     
 Min.   : 10.00  
 1st Qu.: 18.00  
 Median : 27.00  
 Mean   : 33.42  
 3rd Qu.: 42.00  
 Max.   :132.00  
```

```
                  lat        long       depth         mag     stations
lat       1.000000000 -0.36454404  0.03102583 -0.05046165 -0.002220645
long     -0.364544037  1.00000000  0.14444341 -0.17306726 -0.053512460
depth     0.031025831  0.14444341  1.00000000 -0.23063770 -0.073515097
mag      -0.050461651 -0.17306726 -0.23063770  1.00000000  0.851182422
stations -0.002220645 -0.05351246 -0.07351510  0.85118242  1.000000000
```


Model Analysis
========================================================


```
  (Intercept)           lat          long      stations         depth 
 5.7311717012 -0.0076900300 -0.0094524883  0.0153128802 -0.0002725953 
```

```

Call:
lm(formula = mag ~ lat + long + stations + depth, data = quakes)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.62156 -0.13401 -0.00419  0.12857  0.79298 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)  5.731e+00  1.878e-01  30.514  < 2e-16 ***
lat         -7.690e-03  1.308e-03  -5.879 5.63e-09 ***
long        -9.452e-03  1.096e-03  -8.627  < 2e-16 ***
stations     1.531e-02  2.795e-04  54.777  < 2e-16 ***
depth       -2.726e-04  2.878e-05  -9.473  < 2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.1928 on 995 degrees of freedom
Multiple R-squared:  0.7719,	Adjusted R-squared:  0.7709 
F-statistic: 841.6 on 4 and 995 DF,  p-value: < 2.2e-16
```

App and supporting documents
========================================================

The app is available at,

https://nmillick.github.io


Supporting code is available at,

https://github.com/nmillick/nmillick.github.io
