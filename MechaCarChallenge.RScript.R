#Module 15 Challenge

## Deliverable 1
library(tidyverse)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_mpg)
?lm()
lm(mpg ~ vehicle_length+ vehicle_weight+spoiler_angle + AWD + ground_clearance, data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length+ vehicle_weight+spoiler_angle + AWD + ground_clearance, data=MechaCar_mpg))

## Deliverable 2
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
?summarize()
head(suspension_coil)
total_summary <- summarize(suspension_coil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI))
lot_summary <- suspension_coil%>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI), .groups = 'keep')


## Deliverable 3

t.test(suspension_coil$PSI, mu=1500)
lot1=subset(suspension_coil, Manufacturing_Lot == 'Lot1')
lot2=subset(suspension_coil, Manufacturing_Lot == 'Lot2')
lot3=subset(suspension_coil, Manufacturing_Lot == 'Lot3')

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
## Deliverable 4