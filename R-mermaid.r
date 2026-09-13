# ============================================================================
# Workflow flowcharts in R (mermaid via DiagrammeR).
# The mermaid flowcharts in this repository produced Figures 4 and 5 in the
# peer-reviewed article:
#   Lemenkova, P. (2023). A GRASS GIS Scripting Framework for Monitoring Changes
#   in the Ephemeral Salt Lakes of Chotts Melrhir and Merouane, Algeria.
#   Applied System Innovation, 6(4), 61.
#   DOI:  https://doi.org/10.3390/asi6040061
#   MDPI: https://www.mdpi.com/2571-5577/6/4/61
#
# Author: Polina Lemenkova  |  ORCID: 0000-0002-5759-1089
# ============================================================================

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

# ----------- mermaid 02.03.2023 (flowchart) ------------>
mermaid("
graph LR
A((Materials and Data))-->B((Satellite Images))
B-->L{USGS EarthExplorer}
B-->C{Landsat OLI/TIRS}
C-->D[LC08_L1TP_175042_20131116_20200912_02_T1]
C-->E[LC08_L1TP_175042_20151122_20200908_02_T1]
C-->F[LC08_L1TP_175042_20161108_20200905_02_T1]
C-->G[LC08_L1TP_175042_20191117_20200825_02_T1]
C-->H[LC08_L1TP_175042_20221109_20221121_02_T1]
C-->I[LC09_L1TP_175042_20230120_20230120_02_T1]
A((Materials and Data))-->J((Topographic Data))
J-->K((DCW Chart))
J-->M((GEBCO/SRTM))
M-->N[GEBCO_2022 grid 15 arc sec resolution NetCDF]
M-->O[SRTM15+ dataset  15 arc sec interval global terrain model]
style A fill:#ffea00,stroke:#333,stroke-width:1px
style B fill:#e597b2,stroke:#333,stroke-width:1px
style C fill:#f6ad49 ,stroke:#333,stroke-width:1px
style D fill:#f6bfbc,stroke:#333,stroke-width:1px,color:Indigo,stroke-dasharray: 5 5
style E fill:#f5b1aa,stroke:#333,stroke-width:1px,color:Indigo,stroke-dasharray: 5 5
style F fill:#f5b199,stroke:#333,stroke-width:1px,color:Indigo,stroke-dasharray: 5 5
style G fill:#f2a0a1,stroke:#333,stroke-width:1px,color:Indigo,stroke-dasharray: 5 5
style H fill:#f0908d,stroke:#333,stroke-width:1px,color:Indigo,stroke-dasharray: 5 5
style I fill:#ee827c,stroke:#333,stroke-width:1px,color:Indigo,stroke-dasharray: 5 5
style J fill:#c3d825,stroke:#333,stroke-width:1px
style K fill:#ffd900,stroke:#333,stroke-width:1px
style L fill:#ffdb4f,stroke:#333,stroke-width:1px
style M fill:#e0c38c,stroke:#333,stroke-width:1px
style N fill:#a6a5c4,stroke:#333,stroke-width:1px
style O fill:#f7b977,stroke:#333,stroke-width:1px
")


