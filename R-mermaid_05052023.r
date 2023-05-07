#--------------- MY mermaid sequenceDiagram ---------------->
mermaid("
sequenceDiagram
  g.region->>i.group: set region to match the scene
  i.group->>i.cluster: data sorting without TIR
  i.group->>i.cluster: VIZ, NIR into group/subgroup
  i.cluster->>r.support: creating semantic labels
  alt dataset processing
    i.group->>i.cluster: dataset update
    i.cluster->>i.maxlik: generates signature file and report
    i.cluster->>i.maxlik: uses k-means clustering algorithm
    i.cluster->>i.maxlik: creates input signature for i.maxlik
    i.cluster->>i.maxlik: creates cluster means covariance matrices
    i.maxlik->>d.mon wx0: visualization
    i.maxlik->>d.mon wx0: classifies imagery group
    i.maxlik->>d.mon wx0: maximum-likelihood classifier
    i.maxlik->>d.mon wx0: spectral classes for cells
    i.maxlik->>d.mon wx0: land categories for each cell
    i.maxlik->>d.mon wx0: added legend by d.rast.leg
  else dataset processing completed
  end
")
