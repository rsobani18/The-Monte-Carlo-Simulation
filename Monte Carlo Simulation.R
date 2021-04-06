beads <- rep(c("red", "blue"), times = c(2,3)) #create an urn with 2 red & 3 blue
beads #view beads object
sample(beads, 1) #sample 1 bead at random

B<- 10000 #number of times to draw 1 bead
events <- replicate(B, sample(beads, 1)) #draws 1 bead, B times
tab <- table(events) #make a table of outcome counts
tab #view count table 
prop.table(tab) #view table of outcome proportions 

#set.seed() function to get results exactly as expected to be. If R 3.6 then use set.seed(1, sample.kind="Rounding")
#to reset to original seed-setting behaviour. 

#mean function is applied to logical vectors often to return portion of elements that are TRUE. 
#used as a way to calculate probabilities

mean(beads == "blue")
beads == "blue"
