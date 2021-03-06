% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kuenm_omrat.R
\name{kuenm_omrat}
\alias{kuenm_omrat}
\title{Omission rates calculation for single models}
\usage{
kuenm_omrat(model, threshold = 5, occ.tra, occ.test)
}
\arguments{
\item{model}{a RasterLayer of the model to be evaluated.}

\item{threshold}{(numeric vector) value(s) from 0 to 100 that will be used as thresholds,
default = 5.}

\item{occ.tra}{a numerical matrix containing coordinates of the occurrence data used to create
the ecological niche model to be evaluated; columns must be: longitude and latitude.}

\item{occ.test}{a numerical matrix containing coordinates of the occurrences used to test
the ecological niche model to be evaluated; columns must be: longitude and latitude.}
}
\value{
A named numeric value or numeric vector with the result(s).
}
\description{
kuenm_omrat calculates omission rates of geographic projections
of ecological niche models based on one or multiple user-specified thresholds.
}
\examples{
# single threshold
model <- raster::raster(list.files(system.file("extdata", package = "kuenm"),
                                   pattern = "sp_model.tif", full.names = TRUE))
thres <- 5
octr <- read.csv(list.files(system.file("extdata", package = "kuenm"),
                            pattern = "sp_train.csv", full.names = TRUE))
octe <- read.csv(list.files(system.file("extdata", package = "kuenm"),
                            pattern = "sp_test.csv", full.names = TRUE))

om_rate <- kuenm_omrat(model, threshold = thres,
                        occ.tra = octr, occ.test = octe)

# multiple thresholds
thres1 <- c(5, 10, 20)

om_rate <- kuenm_omrat(model, threshold = thres1,
                        occ.tra = octr, occ.test = octe)
}
