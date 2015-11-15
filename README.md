# German-Tank-Problem
Simulating the half century old German Tank Problem, with a suggested formula which outperforms the existing famous solution

In the statistical theory of estimation, the problem of estimating the maximum of a discrete uniform distribution from sampling without replacement is known as the German tank problem.

The name is coined due to its application in World War II to estimate of the number of German tanks based on a random sample of captured / sighted tank serial numbers, basing on the assumption that the serial numbers are produced in running order. 

Read more about the problem <a href="https://en.wikipedia.org/wiki/German_tank_problem" target="_blank">here</a>! 

Formulas:
The first formula of this simulation explores the most common N =~ max + max/sample_size -1 formula. 
 
The analysis and basis of such a formula stems from the fact that the average distance between serial numbers of the  the tanks spotted tends to:
  Average_dist_serial_num = Max number of tanks / sample_size

which can be confirmed by simulation.

Thus, extrapolating on this assumption, why can't the rest of the serial numbers in the sample size be used to provide a better estimate? 

Let sample_size be SS and num_of_tanks be N. My formula thus takes into account of SS "partitions". Each "partition" is found by taking a ascending sorted set of sample numbers, and then dividing each number by their position in the array. My formula thus takes 
  N = Max + min_of_SS -1

This formula performs better than the general formula with more tanks in play, and some of the time when the ratio of sample spotted tanks vs actual number of tanks increase. Do contact me to contribute to the research if I have made an error in my assumptions above. 

Happy Tanking :)



