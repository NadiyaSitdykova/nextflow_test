#!/usr/bin/env nextflow
nextflow.enable.dsl=2 

process LOLO {
  input: 
    path(x)
  output:
    path("lolo")
    
  script:
    """
    cat ${x} > lolo
    echo "lolo" >> lolo
    """
}

workflow {
  LOLO(file(params.input))
}
