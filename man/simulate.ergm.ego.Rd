\name{simulate.ergm.ego}
\alias{simulate.ergm.ego}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Simulate from a \code{\link{ergm.ego}} fit.
}
\description{
  A wrapper around \code{\link[ergm]{simulate.formula}} to simulate
  networks from an ERGM fit using \code{\link{ergm.ego}}.
}
\usage{
simulate.ergm.ego(object, nsim = 1, seed = NULL, popsize = object$popsize, control = control.simulate.ergm.ego(), ..., verbose = FALSE)
}
\arguments{
  \item{object}{
    An \code{\link{ergm.ego}} fit.
}
  \item{nsim}{
    Number of realizations to simulate.
}
  \item{seed}{
    Random seed.
}
  \item{popsize}{
    Network size to which to scale the model for simulation.
}
  \item{control}{
    A \code{\link{control.simulate.ergm.ego}} control list.
}
  \item{\dots}{
    Additional arguments passed to \code{\link[ergm]{san}} and \code{\link[ergm]{simulate.formula}}.
}
  \item{verbose}{
    Verbosity of output.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  The ouput has the same format (with the same options) as \code{\link[ergm]{simulate.formula}}.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
  Pavel N. Krivitsky
}
\note{
%%  ~~further notes~~
}

\seealso{
  simulate.formula, simulate.ergm
}
\keyword{models}