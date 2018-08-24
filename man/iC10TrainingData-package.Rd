\name{iC10TrainingData-package}
\alias{iC10TrainingData-package}
\alias{iC10TrainingData}
\docType{package}
\title{
\packageTitle{iC10TrainingData}
}
\description{
\packageDescription{iC10TrainingData}
Training datasets for iC10; which implements the classifier described in the METABRIC 
paper 'The genomic and transcriptomic architecture of 2,000 breast 
tumours reveals novel subgroups' (Curtis et al., Nature 2012). 
It uses copy number and/or expression form breast cancer data, 
trains a pamr classifier (Tibshirani et al.) with the features available and predicts the iC10 group.
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{iC10TrainingData}
\packageIndices{iC10TrainingData}
Training datasets for iC10; which implements the classifier described in the METABRIC 
paper 'The genomic and transcriptomic architecture of 2,000 breast 
tumours reveals novel subgroups' (Curtis et al., Nature 2012). 
It uses copy number and/or expression form breast cancer data, 
trains a pamr classifier (Tibshirani et al.) with the features available and predicts the iC10 group.
}
\author{
\packageAuthor{iC10TrainingData}

Maintainer: \packageMaintainer{iC10TrainingData}
}
\references{
Curtis et al. The genomic and transcriptomic architecture of 2,000
breast tumours reveals novel subgroups. Nature 2012; 486:346-352.
Tibshirani et al. Diagnosis of multiple cancer types by shrunken
centroids of gene expression. PNAS 2002; 99(10):6567-6572.
}
\keyword{ package }
\seealso{
\code{iC10}
}
\examples{
data(train.CN)
data(train.Exp)
}
