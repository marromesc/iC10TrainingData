makeAssembly <- function(chain = NULL, ref = 'hg38', output = NULL) {
  if (is.null(output)){
    stop('output parameter must be specified')
  }
  
  # Function to up first letter
  firstup <- function(x) {
    substr(x, 1, 1) <- toupper(substr(x, 1, 1))
    x
  }
  
  # Download chain if chain = NULL
  if (is.null(chain)){
    chain <- tempfile(fileext = ".gz")
    download.file(paste0("http://hgdownload.cse.ucsc.edu/goldenpath/hg19/liftOver/hg19To", firstup(ref), ".over.chain.gz"), chain)
    R.utils::gunzip(chain)
    chain <- substr(chain, 1, nchar(chain) - 3)
  }
  
  # Import chain
  ch <- rtracklayer::import.chain(chain)
  GenomeInfoDb::seqlevelsStyle(ch) <- "UCSC"
  
  # Load data to liftover
  data(Map.CN, envir = environment())
  data(Map.Exp, envir = environment())
  data(Map.All, envir = environment())
  
  # Liftover
  Map.CN <- liftover(Map.CN)
  Map.Exp <- liftover(Map.Exp)
  Map.All <- liftover(Map.All)
  
  # Save results
  save(Map.CN, file = paste0(output, "/Map.CN.rda"))
  save(Map.Exp, file = paste0(output, "/Map.Exp.rda"))
  save(Map.All, file = paste0(output, "/Map.All.rda"))
}
  
liftover <- function(dataset) {
  # Create a GRangesList
  cur <- makeGRangesFromDataFrame(dataset, seqnames.field = 'chromosome_name_hg19', start.field = 'start_position_hg19', end.field = 'end_position_hg19')
    
  # Change name style
  GenomeInfoDb::seqlevelsStyle(cur) <- "UCSC"
    
  # Liftover
  cur <- rtracklayer::liftOver(cur, ch)
    
  # Change back name style
  GenomeInfoDb::seqlevelsStyle(cur) <- "NCBI"
    
  # Make data frame
  cur <- as.data.frame(unlist(cur))
    
  # Save the results
  dataset[, paste0('chromosome_name_', ref)] <- cur$seqnames
  dataset[, paste0('start_position_', ref)] <- cur$start
  dataset[, paste0('end_position_', ref)] <- cur$end
    
  return(dataset)
}
  

