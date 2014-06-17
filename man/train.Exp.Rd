\name{train.Exp}
\alias{train.Exp}
\docType{data}
\title{
Expression data for the training set.
}
\description{
Expression data for the training set.
}
\usage{data(train.Exp)}
\format{
  A matrix with 714 rows and 997 columns. Rows are features and columns are training samples.
}
\details{
Each row corresponds to one expression feature for all samples in the training set. Note that it includes 
all features in the classifier. Note that, depending on the data available and the type of matching 
(gene or probe) only some of the features will be used.
}
\source{
Curtis et al. The genomic and transcriptomic architecture of 2,000
breast tumours reveals novel subgroups. Nature 2012; 486:346-352.
}
\examples{
data(train.Exp)
summary(train.Exp)
}
\keyword{datasets}
