% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/routines.R
\name{removeTrend}
\alias{removeTrend}
\title{Removes trend from a batch of DIA-NN experiment}
\usage{
removeTrend(
  report,
  metadata,
  QC_regex = "MSQC",
  fit_model = "loess",
  feature_var = "Precursor.Id",
  feature_value = "Precursor.Quantity"
)
}
\arguments{
\item{\strong{report}}{DIA-NN report file}

\item{\strong{metadata}}{metadata experiment description to arrange by run_order output from \code{\link{create_metadata}}}

\item{\strong{QC_regex}}{regexp to extract QC values for fitting model}

\item{\strong{fit_model}}{model to fit, one of \code{lm}, \code{loess}, \code{rq} (robust regression using medians)}

\item{\strong{feature_value}}{feature value to remove trend from, default: "Precursor.Quantity"}

\item{\strong{feature_var}}{feature variable, default: "Precursor.Id"}
}
\value{
returns tbl with corrected feature values from \code{feature_var}
}
\description{
Removes trend from a batch of DIA-NN experiment
}
\examples{
metadata <- create_metadata(diann_report)
diann_report magrittr::`\%>\%`()
   dplyr::filter(!grepl(pattern = "blank", x="File.Name", ignore.case = T)) magrittr::`\%>\%`()
   removeTrend(metadata = metadata, QC_regex = "MSQC", fit_model = "lm",
   feature_var = "Precursor.Id" , feature_value = "Precursor.Quantity" ) -> Precursor.Id_corrected
}
