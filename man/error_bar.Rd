% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/error_bars.R
\name{error_bar_vertical}
\alias{error_bar_horizontal}
\alias{error_bar_horizontal.default}
\alias{error_bar_vertical}
\alias{error_bar_vertical.default}
\title{gsplot segments}
\usage{
error_bar_vertical(object, ...)

error_bar_vertical.default(x, y, y.high, y.low, epsilon = 0.1, ...)

error_bar_horizontal(object, ...)

error_bar_horizontal.default(x, y, x.high, x.low, epsilon = 0.1, ...)
}
\arguments{
\item{object}{gsplot object}

\item{x}{numeric}

\item{y}{numeric}

\item{y.high}{numeric upper offset for error bar (this is added to y)}

\item{y.low}{numeric lower offset for error bar (this is subtracted from y)}

\item{epsilon}{half-width of error bar edge}

\item{x.high}{numeric upper offset for error bar (this is added to x)}

\item{x.low}{numeric lower offset for error bar (this is subtracted from x)}

\item{\dots}{Further graphical parameters may also be supplied as arguments. See 'Details'.}
}
\value{
modified gsplot object
}
\description{
error_bar_vertical stuff
}
\details{
Add additional functionality to points.
}
\examples{
gs <- gsplot()
gsNew <- points(gs, y=c(3,1,2), x=1:3, xlim=c(0,NA),ylim=c(0,NA),
            col="blue", pch=18, legend.name="Points")
gsNew <- lines(gsNew, c(3,4,3), c(2,4,6), legend.name="Lines")
gsNew <- abline(gsNew, b=1, a=0, legend.name="1:1")
gsNew <- legend(gsNew, "topleft",title="Awesome!")
gsNew <- grid(gsNew)
gsNew <- error_bar_vertical(gsNew, x=1:3, y=c(3,1,2), y.high=c(0.5,0.25,1), y.low=0.1)
gsNew <- error_bar_horizontal(gsNew, x=1:3, y=c(3,1,2), x.low=.2, x.high=.2, col="red",lwd=3)
gsNew <- title(gsNew, "Graphing Fun")
gsNew
}
