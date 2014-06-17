\name{Map.CN}
\alias{Map.CN}
\docType{data}
\title{
Probe mapping of the copy number features of the training set.
}
\description{
Probe mapping of the copy number features of the training set.
}
\usage{data(Map.CN)}
\format{
  A data frame with 38 observations on the following 8 variables.
  \describe{
    \item{\code{Probe_ID}}{a character vector with the Illumina probe ids that flank the features}
    \item{\code{Gene_symbol}}{a factor with the hugo gene names}
    \item{\code{Ensembl_ID}}{a factor with the ensemble ids}
    \item{\code{Cytoband}}{a factor with the cytobands (on hg18)}
    \item{\code{Genomic_location_hg18}}{a factor with the genomic locations on hg18}
    \item{\code{chromosome_name_hg18}}{a numeric vector with the chromosome on hg18}
    \item{\code{start_position_hg18}}{a numeric vector with the start position on hg18}
    \item{\code{end_position_hg18}}{a numeric vector with the end position on hg18}
    \item{\code{Genomic_location_hg19}}{a factor with the genomic locations on hg19}
    \item{\code{chromosome_name_hg19}}{a numeric vector with the chromosome on hg19}
    \item{\code{start_position_hg19}}{a numeric vector with the start position on hg19}
    \item{\code{end_position_hg19}}{a numeric vector with the end position on hg19}
  }
}
\source{
Curtis et al. The genomic and transcriptomic architecture of 2,000
breast tumours reveals novel subgroups. Nature 2012; 486:346-352.
}
\examples{
data(Map.CN)
head(Map.CN)
}
\keyword{datasets}
