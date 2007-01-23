\name{plot.mixstock.est}
\alias{plot.mixstock.est}
\title{plot mixed stock analysis estimates}
\description{
  plots a mixed stock analysis estimate as a point plot
  with 95\% confidence limites
}
\usage{
plot.mixstock.est(x, plot.freqs = FALSE,
sourcectr=FALSE, contrib.lab = "Estimated source contributions",
sourcefreq.lab = "Estimated source marker freqs",
markcolors = rainbow(x$H),...)
}
\arguments{
  \item{x}{mixstock estimate}
  \item{plot.freqs}{plot marker frequency estimates?}
  \item{sourcectr}{plot source-centric estimates?}
  \item{contrib.lab}{label for source contribution plot}
  \item{sourcefreq.lab}{label for marker frequency plot}
  \item{markcolors}{colors corresponding to markers}
  \item{\dots}{other arguments to barplot}
}
\value{
  produces a plot on the current graphics device
}
\examples{
  data(simex)
  u1 = uml(simex)
  plot(u1)
  plot(u1,plot.freqs=TRUE)
}
\keyword{misc}
