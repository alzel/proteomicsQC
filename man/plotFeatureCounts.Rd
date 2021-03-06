% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{plotFeatureCounts}
\alias{plotFeatureCounts}
\title{Plots feature counts}
\usage{
plotFeatureCounts(
  report,
  metadata,
  Q_THR = 0.01,
  run_order_var = "run_order",
  features = c("Protein.Group", "Protein.Ids", "Precursor.Id")
)
}
\arguments{
\item{metadata}{experiment description to arrange by run_order output from \code{\link{create_metadata}}}

\item{run_order_var}{variable for sample running order}

\item{\strong{report}}{DIA-NN report file}

\item{\strong{Q_THR}}{Q-value filtering threshold (Default)}

\item{\strong{features}}{list of features to plot, e.g. c("Protein.Group", "Protein.Ids", "Precursor.Id")}
}
\value{

}
\description{
Plots feature counts
}
\examples{
plotFeatureCounts(diann_report, Q_THR = 0.01, features = c("Protein.Ids", "Precursor.Id"))
}
