\name{IntClustMemb}
\alias{IntClustMemb}
\docType{data}
\title{
Class Membership for the training set
}
\description{
iC10 assignment for the Metabric training dataset (997 samples).
}
\usage{data(IntClustMemb)}
\format{
  The format is:
 Factor w/ 10 levels "1","2","3","4",..: 2 9 3 3 8 6 7 7 7 3 ...
 - attr(*, "names")= chr [1:997] "MB.0135" "MB.0167" "MB.0136" "MB.3403" ...
}
\source{
Curtis et al. The genomic and transcriptomic architecture of 2,000
breast tumours reveals novel subgroups. Nature 2012; 486:346-352.
}
\examples{
data(IntClustMemb)
barplot(table(IntClustMemb))
}
\keyword{datasets}
