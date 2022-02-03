\name{mMCPcounter.estimate}
\alias{mMCPcounter.estimate}
\title{
mMCP-counter estimates  
}
\description{
Returns mMCP-counter scores for the composition of several populations in heterogeneous murine samples
}
\usage{
mMCPcounter.estimate(exp, features = c("Gene.Symbol","ENSEMBL.ID","Probes")[1], genomeVersion = c("GCRm38","GCRm39")[2])
}

\arguments{
  \item{exp}{
  data frame containing the expression data. Genes must be in lines and samples in columns. Gene symbols must be specified as rownames. Gene expression data should be normalized and expressed in log scale.
}
  \item{features}{
  One of "Gene.Symbol" (default), "ENSEMBL.ID" or "Probes". Specifies the format of the gene IDs. "Probes" refers to Affymetrix Mouse Gene 1.0 ST Array probes IDs.
}
  \item{genomeVersion}{
  One of "GCRm39" (default) or "GCRm38". Specifies the version of the mouse genome to use.
}
}

\value{
a data frame containing the mMCP-counter estimates for the different cell populations (in rows) and the different samples (in columns)  .
}
\author{
F. Petitprez
}
\note{
This is a contribution from the Tumor Identity Cards (CIT) program founded by the 'Ligue Nationale Contre le Cancer' (France): \url{http://cit.ligue-cancer.net}. For any question please contact CITR@ligue-cancer.net
}
\keyword{ mMCPcounter.estimate }
