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
  foundGenes <- intersect(mMCPcounter_signatures$Gene.Symbol,rownames(exp))
  if(length(foundGenes)==0){stop("No signature found in input row names. Please ensure these are gene symbols.")}
  absentSignatures <- setdiff(unique(mMCPcounter_signatures$Denomination),unique(mMCPcounter_signatures[mMCPcounter_signatures$Gene.Symbol%in%rownames(exp),"Denomination"]))
  if(length(absentSignatures)>0){warning(paste("No genes were found for population(s): ",paste(absentSignatures,collapse = ", "),".",sep=""))}
  localSig <- mMCPcounter_signatures[mMCPcounter_signatures$Gene.Symbol %in% foundGenes,]
  expAg <- exp[localSig$Gene.Symbol,]
  expAg <- cit.dfAggregate(expAg,localSig$Denomination,fAggreg = median.na)
  expAg <- expAg[c("T cells", "CD8 T cells", "NK cells", "B derived", "Memory B cells", "Monocytes / macrophages", "Monocytes", "Granulocytes", "Mast cells", "Eosinophils", "Neutrophils", "Basophils", "Vessels", "Lymphatics", "Endothelial cells", "Fibroblasts"),]
  expAg <- expAg[apply(expAg,1,function(x){sum(is.na(x))})<ncol(expAg),]
  return(expAg)
}

