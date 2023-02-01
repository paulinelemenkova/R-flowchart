# https://rich-iannone.github.io/DiagrammeR/graphviz_and_mermaid.html

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
