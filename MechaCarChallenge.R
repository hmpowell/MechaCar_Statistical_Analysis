library(tidyverse)


# Read in the csv file.
mechacar_df <- read.csv(file='MechaCar_mpg.csv',stringsAsFactors=F,check.names=F)

# Perform a linear regression module 
mechacar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df)

# Determine the p-value and r-squared of the linear regression module.
summary(mechacar_lm)

### Perform Summary Analysis on suspension coil dataset

# Read in the csv file
suspension_coil <- read.csv(file='Suspension_Coil.csv',stringsAsFactors = F, check.names = F)

# Create the Total Summary
total_summary <- suspension_coil %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')


# Create the Summary By Lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')


### Suspension Coil T-Tests

# Peform t-test across all Lots
t.test(suspension_coil$PSI,mu = 1500)

# Peform t-test on Lot 1
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Peform t-test on Lot 2
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Peform t-test on Lot 3
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)