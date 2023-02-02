# https://rich-iannone.github.io/DiagrammeR/graphviz_and_mermaid.html
library(DiagrammeR)
# ----------- mermaid Basics - 1 (horizontal) ------------>
mermaid("
graph LR
  A-->B
  A-->C
  C-->E
  B-->D
  C-->D
  D-->F
  E-->F
")

# ----------- mermaid Basics - 2 (vertical) ------------>

mermaid("
graph TB
  A-->B
  A-->C
  C-->E
  B-->D
  C-->D
  D-->F
  E-->F
")

mermaid("
graph TB
  A-->B
  A-->C
  C-->E
  B-->D
  D-->F
  E-->F
")

# ----------- mermaid Basics - 3 (flowchart) ------------>
mermaid("
graph LR
A(Rounded)-->B[Rectangular]
B-->C{A Rhombus}
C-->D[Rectangle One]
C-->E[Rectangle Two]
")

#--------------- mermaid sequenceDiagram ---------------->
mermaid("
sequenceDiagram
  customer->>ticket seller: ask ticket
  ticket seller->>database: seats
  alt tickets available
    database->>ticket seller: ok
    ticket seller->>customer: confirm
    customer->>ticket seller: ok
    ticket seller->>database: book a seat
    ticket seller->>printer: print ticket
  else sold out
    database->>ticket seller: none left
    ticket seller->>customer: sorry
  end
")

#--------------- MY mermaid sequenceDiagram ---------------->
mermaid("
sequenceDiagram
  ROB Archives->>Cytomine: data collection
  ROB Archives->>Cytomine: data scanning
  Cytomine->>Python: data organizing and storage
  Cytomine->>Python: generating ontology classes
  Python->>.MSEED: data vectorisation
  alt dataset processing
    Cytomine->>ROB Archives: dataset update
    Python->>.MSEED: data conversion
    Python->>.MSEED: tile processing
    Python->>.MSEED: segmentation
    Python->>.MSEED: time labelling
    .MSEED->>ObsPy: data conversion
    .MSEED->>ObsPy: data plotting and visualization
  else dataset processing completed
    Python->>Cytomine: data upload
    Python->>Cytomine: data overlay
    Cytomine->>ROB Archives: data quality control
    Cytomine->>ROB Archives: dataset reuse
  end
")
