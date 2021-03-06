% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/par.R
\name{par}
\alias{par}
\title{Set or Query Graphical Parameters}
\usage{
par(object, ...)
}
\arguments{
\item{object}{gsplot object}

\item{\dots}{Further graphical parameters may also be supplied as arguments. See \code{\link[graphics]{par}}}
}
\description{
par can be used to set or query graphical parameters. 
Parameters can be set by specifying them as arguments 
to par in tag = value form, or by passing them as a list 
of tagged values. See \code{\link[graphics]{par}} for more details.
}
\examples{
gs2 <- gsplot(new=TRUE,mar=c(5,4,1,2)) \%>\%
  points(1, 2) \%>\%
  bgCol(col="white") 
gs2

gs2 <- gsplot(new=TRUE, cex=1.2) \%>\%
  points(1, 2) \%>\%
  bgCol(col="white") \%>\%
  par(new=FALSE, mar=c(5,4,3,3), cex=2.1) 
gs2
}

