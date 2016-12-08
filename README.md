# gofMC
When measuring the goodness of fit (gof), one must be cognizant of noise. Several metrics exist to measure gof, such as R-Squared, RMSE, Kolmogorov-Smirnov, etc., but none give an understanding of the noise associated with a particular measurement.  This package (gofMC) provides the estimate of the noise threshold for a given gof metric, desired noise level, noise distribution and degrees of freedom.  For instance, an R-squared measurement using 5 degrees of freedom, 95% noise level, and normal noise distribution, has a threshold of 0.77.  Any R-Squared measurement below this value for the same conditions is below the threshold, is at least 95% likely to have been effected by noise and is thus not distinguishable from noise. We make the measurement using a monte carlo technique where we calculate the gof metric using many random samples, then find the level at which 95% (or what ever level the user desires) of the measurements fall below.  Because this is a calculation-intensive technique, some of the functions will run slowly if the number of degrees of freedom and the number of samples is large. Lastly, we can use the ratio of fit metric to noise level to define a new quantity (Fit Equivalent) that can be used for comparing two measures of different degrees of freedom.  