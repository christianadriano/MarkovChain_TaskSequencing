#Markov Chain to compute the probability of YES answers

#load the package for Discrete Time Markov Chains (DTMC).
install.packages("markovchain")
library(markovchain)

tmA <- matrix(c(0.4,0.3,0.3,
                0.3,0.4,0.3,
                0.3,0.3,0.4),
              nrow = 3,
              byrow = TRUE) #define the transition matrix

dtmcA <- new("markovchain",transitionMatrix=tmA,
             states=c("yes","no","idk"),
             name="MarkovChain A") #create the DTMC
dtmcA
plot(dtmcA, col="red",pch=16)

dtmcA["yes","no"] #Probability of transitionting from Yes to No.
