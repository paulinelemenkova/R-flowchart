# R Flowchart and Diagram Scripts — mermaid, DiagrammeR and diagram

A collection of R scripts for building flowcharts and diagrams programmatically
(diagram-as-code) with three toolsets: the mermaid syntax via DiagrammeR, the
Graphviz/DOT engine via DiagrammeR (grViz), and the diagram package
(openplotmat / plotmat). The diagrams cover research workflows, hierarchical
process structures and methodology schemes.

## Related publication

The mermaid workflow flowcharts in this repository produced Figures 4 and 5 in:

Lemenkova, P. A GRASS GIS Scripting Framework for Monitoring Changes in the
Ephemeral Salt Lakes of Chotts Melrhir and Merouane, Algeria. Applied System
Innovation 2023, 6(4), 61.

- DOI:  https://doi.org/10.3390/asi6040061
- MDPI: https://www.mdpi.com/2571-5577/6/4/61 (ISSN 2571-5577, Scopus)

In that study, Figure 4 (the data and workflow processes) and Figure 5 (the
hierarchical structure of the GRASS GIS image-processing framework) were both
drawn with the R mermaid library.

## Scripts

- R-mermaid.r, R-mermaid_05052023.r: flowcharts written in mermaid syntax
  (graph / flowchart definitions with nodes and directed edges) and rendered
  through DiagrammeR::mermaid — the approach used for the article's Figures 4-5.
- R-DiagrammeR_examples.r, R-DiagrammeR_flower*.r: directed-graph diagrams built
  with DiagrammeR / Graphviz (grViz, DOT language), including node/edge styling.
- R-diagram_*.r (dated versions), R-diagram_horizontal.r, R-diagram_vertical.r:
  flow diagrams built with the diagram package (coordinate-placed boxes and
  arrows via plotmat / openplotmat), in horizontal and vertical layouts.
- R-diagram_2024_03_04_ANN.r, R-diagram_2024_03_06_DL.r: methodology diagrams of
  artificial-neural-network / deep-learning workflows.

## Methods

- Diagram-as-code: reproducible flowchart construction from text definitions
  rather than manual drawing.
- Three back ends: mermaid (DiagrammeR), Graphviz/DOT (DiagrammeR grViz), and the
  diagram package (matrix-placed boxes and arrows).

## Requirements

- R (>= 4.0); packages: DiagrammeR, diagram (and DiagrammeRsvg / rsvg for export)

## Usage

Run a script to render its diagram, e.g.:

    Rscript R-mermaid.r

## Author and citation

Polina Lemenkova
ORCID: https://orcid.org/0000-0002-5759-1089

If you use the workflow flowcharts, please cite:

Lemenkova, P. A GRASS GIS Scripting Framework for Monitoring Changes in the
Ephemeral Salt Lakes of Chotts Melrhir and Merouane, Algeria. Applied System
Innovation 2023, 6(4), 61. https://doi.org/10.3390/asi6040061

## License

MIT — see the LICENSE file (Copyright Polina Lemenkova).
