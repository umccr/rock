% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cnv_general.R
\name{read_cnv}
\alias{read_cnv}
\title{Read CNVkit, FACETS, PURPLE or TitanCNA CNV Segments}
\usage{
read_cnv(cnv)
}
\arguments{
\item{cnv}{Path to CNV file.}
}
\value{
A \code{cnv} list containing a dataframe (\code{tibble}) with the following columns:
\itemize{
\item chrom: chromosome
\item start: start coordinate
\item end: end coordinate
\item tot_cn: total copy number estimate
}
}
\description{
Reads the CNV segment TSV file output by CNVkit, FACETS, PURPLE or TitanCNA.
}
\examples{

fn <- system.file("extdata", "HCC2218_cnvkit-call.cns", package = "pebbles")
cnv <- read_cnv(fn)

}
