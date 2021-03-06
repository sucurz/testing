\name{plot.fes}
\alias{plot.fes}
\title{Free energy surface plotter}
\description{The function recognizes whether the free energy surface (FES) is 1D or 2D.
             A 1D FES is ploted as a free energy profile. A 2D FES is ploted as a heatmap
             (function \code{image}) and as contours.
}
\usage{
plot.fes(inputfes, plottype = "both",
         nlevels = 10, levels = NULL, col = rainbow(135)[100:1],
         labels = NULL, labcex = 0.6, drawlabels = TRUE, contcol=par("fg"), ...)
}
\arguments{
  \item{inputfes}{
      The object \code{inputfes} is a free energy surface calculated by function \code{mtdfes}, \code{mtdfes2}
      or read by \code{read.fes}.
}
  \item{plottype}{
      \code{type} what type of plot should be drawn. Plot type choice is irelevant for 1D FES. Possible types are
          \itemize{
              \item{\code{both} plots both colored heatmap (\code{image}) and contours. It is deafault.}
              \item{\code{image} plots colored heatmap (\code{image}) only}
              \item{\code{contour} plots contours only.}
          }
}
  \item{nlevels}{
    number of contour levels desired \code{levels} is not supplied.
}
  \item{levels}{
    a vector giving the labels for the contour lines.  If \code{NULL}
    then the levels are used as labels, otherwise this is coerced
    by \code{as.character}.
}
  \item{col}{
    a list of image colors such as that generated by \code{rainbow},
    \code{heat.colors}, \code{topo.colors}, \code{terrain.colors} or similar
    functions.
}
  \item{labels}{
    a vector giving the labels for the contour lines.  If \code{NULL}
    then the levels are used as labels, otherwise this is coerced
    by \code{as.character}.
}
  \item{labcex}{
    \code{cex} for contour labelling.  This is an absolute size, not a
    multiple of \code{par("cex")}.
}
  \item{drawlabels}{
}
  \item{method}{
}
  \item{contcol}{
}
}
\details{
}
\value{
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Vojtech Spiwok
}
\note{
}

\seealso{
}
\examples{
  data(acealanme1.3)
  myfes<-mtdfes(acealanme1.3)
  plot(myfes)
}
