\name{mMCPcounter.estimate}
\alias{mMCPcounter.estimate}
\title{
mMCP-counter estimates  
}
\description{
Returns mMCP-counter scores for the composition of several populations in heterogeneous murine samples
}
\usage{
mMCPcounter.estimate(exp)
}

\arguments{
  \item{exp}{
  data frame containing the expression data. Genes must be in lines and samples in columns. Gene symbols must be specified as rownames.
}
}

\value{
a data frame containing the mMCP-counter estimates for the different cell populations (in rows) and the different samples (in columns)  .
}
\author{
F Petitprez
}
\note{
This is a contribution from the Tumor Identity Cards (CIT) program founded by the 'Ligue Nationale Contre le Cancer' (France): \url{http://cit.ligue-cancer.net}. For any question please contact CITR@ligue-cancer.net
}
\keyword{ mMCPcounter.estimate }
