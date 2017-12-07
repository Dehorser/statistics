# Problem 2

b1 = .73
se1 = .10
t = b1/se1
n = 110

# df = n - # of parameters
# Measures statistical significance of coefficient
p = 2 * pt(-abs(t), n-2)

# Statistical significance of the slope
p

b0=19.6
se0=7.2
t0 = b0/se0
p0 = 2 * pt(-abs(t0), n-2)

# Testing intercept = 0
p0

t1=(b1-1)/se1
p1 = 2 * pt(-abs(t1), n-2)

# Testing slope = 1
p1

lb = b1 - 1.96*se1
ub = b1 + 1.96*se1
lb
ub