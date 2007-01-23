\name{as.mixstock.data}
\alias{as.mixstock.data}
\alias{mixstock.data}
\alias{plot.mixstock.data}
\alias{print.mixstock.data}
\title{class for marker data from sources and mixed stocks}
\description{
  This class provides a standard structure for information
  on markers (e.g. mitochondrial DNA samples) from a variety of different
  sources (e.g. sources) and from (a) mixed population(s) that draw(s) from
  those sources. 
}
\usage{
as.mixstock.data(object,nmix=1,sourcesize)
print.mixstock.data(x,...)
plot.mixstock.data(x,prop = TRUE, legend = TRUE, colors = rainbow(x$H), 
    leg.space = 0.3, leg.ncol = 3, mix.off = 0.5,
stacklabels=FALSE, ...)
}
\arguments{
  \item{object}{a matrix with (R+1) columns and (H) rows,
    where the columns specify R sources plus a mixed population,
    and the rows specify distinct marker classes (e.g. mitochondrial haplotypes)}
  \item{x}{a \code{mixstock.data} object}
  \item{prop}{reduce data to frequencies?}
  \item{legend}{add a legend to the plot?}
  \item{colors}{colors denoting different markers}
  \item{leg.space}{space to leave for legend (fraction at top of graph)}
  \item{leg.ncol}{number of columns for legend}
  \item{mix.off}{spacing offset for bar(s) representing mixed stock(s)}
  \item{stacklabels}{(logical) put source names on multiple lines?}
  \item{nmix}{number of mixed stocks (default 1)}
  \item{sourcesize}{either a numeric vector of relative source sizes, or
    "first" or "last" to specify that the first or last row
    of the matrix contains the source sizes}
  \item{...}{additional arguments to \code{\link{barplot}}}
}
\value{
  \code{mixstock.data} objects have the following components:
  \item{R}{number of sources}
  \item{H}{number of marker classes (haplotypes)}
  \item{sourcesamp}{samples from sources, in an HxR matrix}
  \item{mixsamp}{a vector of sample from the mixed population}
  \code{print.mixstock.data} and \code{plot.mixstock.data} give
  textual and graphical summaries of the results
}
\author{Ben Bolker}
\examples{
x <- matrix(c(23,34,10,10,11,4,4,5,2),byrow=TRUE,nrow=3)
dx <- as.mixstock.data(x)
dx
plot(dx)
}
\keyword{misc}
