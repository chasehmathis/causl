fam <- rep(1,4)
pars <- list(z = list(beta=0, phi=1),
             x = list(beta=c(0,0.5), phi=1),
             y = list(beta=c(0,0.5), phi=0.5),
             cop = list(beta=matrix(1, 1, 1)))

set.seed(123)
dat <- causalSamp(1e2, par=pars, family=fam)
out <- fit_causl(dat, family=c(1,1,1))

set.seed(124)
fam2 <- c(1,5,1,1)
dat2 <- causalSamp(5e2, par=pars, family=fam2)
out2 <- fit_causl(dat2, family=c(1,1,1))


test_that("fitting works as expected", {
  testthat::expect_lt(sum((out$pars$y$beta - pars$y$beta)^2/out$pars$y$beta_sandwich^2), qchisq(0.99, df=2))
  testthat::expect_lt(sum((out2$pars$y$beta - pars$y$beta)^2/out2$pars$y$beta_sandwich^2), qchisq(0.99, df=2))
})

# nll1 <- nll3(dat, family=rep(1,3), inCop = c("y","z"))
# out3 <- optim(nll1, par=c(0,0,0,0,0,1,1))
#
# test_that("fitting3 works as expected", {
#   testthat::expect_lt(sum((out3$pars - c(-0.00216897817065516, 0.591080756662059, -0.105764362140315,
#                                          0.714666339742363, -0.10159280239843, 0.444723304635891,
#                                          0.763841648563355))^2), 1e-6)
# })
