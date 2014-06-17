\name{iC10TrainingData-package}
\alias{iC10TrainingData-package}
\docType{package}
\title{
Training datasets for iC10 package.
}
\description{
Training datasets for iC10; which implements the classifier described in the METABRIC 
paper 'The genomic and transcriptomic architecture of 2,000 breast 
tumours reveals novel subgroups' (Curtis et al., Nature 2012). 
It uses copy number and/or expression form breast cancer data, 
trains a pamr classifier (Tibshirani et al.) with the features available and predicts the iC10 group.
}
\details{
\tabular{ll}{
Package: \tab iC10TrainingData\cr
Type: \tab Package\cr
Version: \tab 1.0.0\cr
Date: \tab 2014-06-17\cr
License: \tab What license is it under?\cr
}
data(train.CN)
data(train.Exp)
}
\author{
Oscar M Rueda

Maintainer: <Oscar.Rueda@cruk.cam.ac.uk>
}
\references{
Curtis et al. The genomic and transcriptomic architecture of 2,000
breast tumours reveals novel subgroups. Nature 2012; 486:346-352.
Tibshirani et al. Diagnosis of multiple cancer types by shrunken
centroids of gene expression. PNAS 2002; 99(10):6567-6572.
}

\seealso{
\code{iC10}
}
\examples{
data(train.CN)
data(train.Exp)
}