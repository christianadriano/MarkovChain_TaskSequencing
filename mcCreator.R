#Markov Chain to compute the probability of YES answers

#load the package for Discrete Time Markov Chains (DTMC).
install.packages("markovchain")
library(markovchain)

tmA <- matrix(c(0.1,0.6,0.3,
                0.3,0.4,0.3,
                0.3,0.3,0.4),
              nrow = 3,
              byrow = TRUE) #define the transition matrix

dtmcA <- new("markovchain",transitionMatrix=tmA,
             states=c("yes","no","idk"),
             name="MarkovChain A") #create  the DTMC
dtmcA
p <- plot(dtmcA, col="red",pch=16)
p

dtmcA["yes","no"] #Probability of transitionting from Yes to No.

#Simulate states distribution after n-steps
initialState<-c(0,1,0)
steps<-2
finalState<-initialState*dtmcA^steps #using power operator
finalState

# Steady states 
steadyStates(dtmcA) #
