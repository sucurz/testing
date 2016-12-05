# Metadynminer

Metadynminer is R packages for reading, analysis and visualisation of metadynamics HILLS files produced by Plumed.

```R
install.packages("metadynminer") # in future will be added to R repository
library(metadynminer) # in future will be added to R repository

# Reading hills file
hills<-read.hills("HILLS", per=c(TRUE, TRUE)) # done, to do manual

# Summary
summary(hills) # done, to do manual

# Plot hills file
plot(hills) # done, to do manual

# Plot hill heights
plotheights(hills) # done, to do manual

# Calculate FES
fes<-mtdfes(hills, time=10000) # to do by linking with Fortran code

# Calculate FESes during flooding
fes2<-mtdfes2(hills, time=1:10*1000) # to do by linking with Fortran code

# Evaluate FES
summary(fes) # done, to do manual

# Plot FES
plot(fes) # done, to do manual

# Find minima
minima<-fesminima(fes) # done, to do manual

# Evaluate free energy minima
summary(minima) # done, to do manual

# Plot free energy minima
plot(fes) # 2D done, 1D to do, to do manual

# Calculate free energy
fe<-freeene(x, hills, per=c(TRUE, TRUE), time=10000) # to do by linking with Fortran code

# Calculate free energy profile
fe<-freeene2(x, hills, per=c(TRUE, TRUE), time=0:10000) # to do by linking with Fortran code

# Calculate free energy difference profile
fe1<-freeene2(x1, hills, per=c(TRUE, TRUE), time=0:10000)
fe2<-freeene2(x2, hills, per=c(TRUE, TRUE), time=0:10000)
fediff<-fe2-fe1

# Check if converged
isconverged(fediff, from=5000) # to do

# Find transition path
# Summary of transition path

```
