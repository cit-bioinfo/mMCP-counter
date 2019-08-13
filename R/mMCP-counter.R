# Rd
# description >> internal
# argument
# item >> data >> ...
# item >> partition >>  ...
# item >> MARGIN >> ...
# item >> fAggreg >> ...
# value >> ...
# author >> A de Reynies
# keyword >> internal
# end
cit.dfAggregate <- function (data, partition, MARGIN = 1, fAggreg = median.na) {
    cMARGIN <- setdiff(c(1, 2), MARGIN)
    n <- length(partition)
    N <- dim(data)[MARGIN]
    p <- dim(data)[cMARGIN]
    if (n != N)
        stop("ERROR - cit.dfAggregate : size of partition doesn't correspond to data dimension")
    l <- split(1:N, partition)
    d <- data
    if (MARGIN == 2)d <- t(data)

    d <- matrix(sapply(l, function(i) if (length(i) == 1) {
                                         unlist(d[i, ])
                                      }else {
                                         apply(d[i, ], 2, fAggreg)
                                      }), ncol = p, byrow = TRUE)



    d <- as.data.frame(d)
    rownames(d) <- names(l)
    names(d) <- dimnames(data)[[cMARGIN]]
    if (MARGIN == 2)
        d <- as.data.frame(t(d))
    d
}


# Rd
# description >> internal
# argument
# item >> data >> ...
# item >> partition >>  ...
# item >> MARGIN >> ...
# item >> fAggreg >> ...
# value >> ...
# author >> F Petitprez
# keyword >> internal
# end
median.na <- function (x) {
  return(median(x,na.rm=TRUE))
}




# Rd
# description >> Returns mMCP-counter scores for the composition of several populations in heterogeneous murine samples
# argument
# item >> exp >> data frame containing the expression data. Genes must be in lines and samples in columns. Gene symbols must be specified as rownames.
# value >> ...
# author >> F Petitprez
# keyword >> ...
# end
mMCPcounter.estimate <- function(exp){
  data("mMCPcounter_signatures",  envir=sys.frame(sys.nframe()))
  expAg <- exp[mMCPcounter_signatures$Gene.Symbol,]
  expAg <- cit.dfAggregate(expAg,mMCPcounter_signatures$Denomination,fAggreg = median.na)
  return(expAg)
}

