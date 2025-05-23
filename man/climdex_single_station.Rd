% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/climdex_single_station.R
\name{climdex_single_station}
\alias{climdex_single_station}
\title{Climdex Single Station}
\usage{
climdex_single_station(
  ci,
  freq = "annual",
  indices,
  year,
  month,
  spells.can.span.years = FALSE,
  gsl.mode = "GSL",
  threshold = 1
)
}
\arguments{
\item{ci}{The climate data for the weather station.}

\item{freq}{The frequency at which the climate indices should be calculated. It can be either "annual" or "monthly" (default: "annual").}

\item{indices}{A character vector specifying the climate indices to be calculated.}

\item{year}{The column name or index of the year in the climate data.}

\item{month}{The column name or index of the month in the climate data. Required only if freq = "monthly".}

\item{spells.can.span.years}{A logical value indicating whether the spells can span multiple years. This parameter is used by certain indices that involve consecutive days, such as "wsdi", "csdi", "cdd", and "cwd" (default: FALSE).}

\item{gsl.mode}{The mode used to calculate growing season length (GSL) index. It is used by the "gsl" index. Please refer to the documentation of climdex.pcic::climdex.gsl for details.}

\item{threshold}{A threshold value used by the "rnnmm" index to calculate the number of consecutive wet days above the threshold (default: 1).}
}
\value{
A data frame containing the calculated climate indices for the specified station and time period.
}
\description{
This function calculates climate indices for a single weather station based on the provided parameters. The function utilizes the climdex.pcic package to compute various climate indices. The indices can be calculated either on an annual or monthly basis, depending on the specified frequency.
}
\examples{
data(climdex_data)
dates_pcic <- PCICt::as.PCICt(as.character(climdex_data$date), cal = "gregorian")
ci <- climdex.pcic::climdexInput.raw(
 tmax = climdex_data$tmax, tmin = climdex_data$tmin, prec = climdex_data$precip,
  tmax.dates = dates_pcic, tmin.dates = dates_pcic, prec.dates = dates_pcic,
  base.range = c(1981, 1990), northern.hemisphere = TRUE
)

all_indices <- c(
  "fd", "su", "id", "tr", "wsdi", "csdi", "gsl", "txx", "txn", "tnx", "tnn",
  "tn10p", "tx10p", "tn90p", "tx90p", "dtr", "rx1day", "rx5day", "sdii",
  "r10mm", "r20mm", "rnnmm", "cdd", "cwd", "r95ptot", "r99ptot", "prcptot"
)

# Annual frequency
df_annual <- climdex_single_station(ci = ci, freq = "annual", indices = all_indices, year = "year")

#Monthly frequency subset
df_monthly <- climdex_single_station(ci = ci, freq = "monthly", indices = c("txx", "tn10p", "dtr"), year = "year", month = "month")
}
