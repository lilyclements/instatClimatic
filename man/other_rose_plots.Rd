% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/other_rose_plot.R
\name{other_rose_plots}
\alias{other_rose_plots}
\title{OTHER ROSE PLOTS}
\usage{
other_rose_plots(
  data,
  type1_col_name,
  type2_col_name,
  date_col_name,
  wd_col_name,
  ws_col_name,
  main_method,
  single_pollutant,
  multiple_pollutant,
  ...
)
}
\arguments{
\item{data}{A data frame containing the required variables.}

\item{type1_col_name}{The column name for the first type variable.}

\item{type2_col_name}{The column name for the second type variable.}

\item{date_col_name}{The column name for the date variable.}

\item{wd_col_name}{The column name for the wind direction variable.}

\item{ws_col_name}{The column name for the wind speed variable.}

\item{main_method}{The main method to be used for generating the rose plots. Valid options are "percentile_rose", "polar_plot", "polar_annulus", "polar_cluster", and "polar_frequency".}

\item{single_pollutant}{The name of the pollutant variable to be used for single-pollutant plots.}

\item{multiple_pollutant}{The name(s) of the pollutant variable(s) to be used for multiple-pollutant plots.}

\item{...}{Additional arguments to be passed to the openair package functions.}
}
\value{
The function generates the desired rose plot based on the specified parameters.
}
\description{
This function creates a wrapper around functions from openair package for generating various types of rose plots.
}
\examples{
# This example generates a percentile rose plot using the "percentile_rose"
# method from the openair package, using the "PM2.5" pollutant for the plot
# and including "NO2" and "SO2" as additional pollutants in the plot.
# data <- read.csv("data.csv")
# other_rose_plots(data, type1_col_name, type2_col_name, date_col_name,
#                  wd_col_name, ws_col_name, "percentile_rose", "PM2.5",
#                  c("NO2", "SO2"))
}
