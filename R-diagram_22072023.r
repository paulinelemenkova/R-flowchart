DiagrammeR::grViz("
digraph Polina_diagram {
  
  # graph statement
  graph [layout = dot,
         rankdir = TB,   # layout top-to-bottom
         fontsize = 12]
  
  # nodes (circles)
  node [shape = circle,
       fixedsize = true
       width = 2.0]
  
  A [label = 'Gulf of \nHammamet', fontsize = 22, color = magenta, width=2.5, linewidth = 0.5]
  B [label = 'Gulf of \nGabès', fontsize = 22, color = purple, width=2.5]
  subgraph cluster0 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.0, color = darkslategray, style = rounded]
  A1 [label = 'Landsat images \n2017', shape = rectangle, fontsize = 19, height = 1.0, width = 2.5, style = rounded]
  A2 [label = 'Landsat images \n2023', shape = rectangle, fontsize = 19, height = 1.0, width = 2.5, style = rounded]
  }
  subgraph cluster1 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.0, color = darkslategray, style = rounded]
  B1 [label = 'Landsat images \n2017', shape = rectangle, fontsize = 19, height = 1.0, width = 2.5, style = rounded]
  B2 [label = 'Landsat images \n2023', shape = rectangle, fontsize = 19, height = 1.0, width = 2.5, style = rounded]
  }
  subgraph cluster2 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 4.0, color = darkslategray]
  A11 [label = 'February \nLC81910352017059LGN00', shape = box3d, fontsize = 18, height = 1.0]
  A22 [label = 'April \nLC81910352017091LGN00', shape = box3d, fontsize = 18, height = 1.0]
  A33 [label = 'July \nLC81910352017187LGN00', shape = box3d, fontsize = 18, height = 1.0]
  }
  subgraph cluster3 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 4.0, color = darkslategray]
  B11 [label = 'February \nLC91910352023052LGN01', shape = box3d, fontsize = 18, height = 1.0]
  B22 [label = 'April \nLC91910352023100LGN00', shape = box3d, fontsize = 18, height = 1.0]
  B33 [label = 'July \nLC91910352023196LGN00', shape = box3d, fontsize = 18, height = 1.0]
  }
  subgraph cluster4 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 4.0, color = darkslategray]
  C11 [label = 'February \nLC81910362017059LGN00', shape = box3d, fontsize = 18, height = 1.0]
  C22 [label = 'April \nLC81910362017091LGN00', shape = box3d, fontsize = 18, height = 1.0]
  C33 [label = 'July \nLC81910362017203LGN00', shape = box3d, fontsize = 18, height = 1.0]
  }
  subgraph cluster5 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 4.0, color = darkslategray]
  D11 [label = 'February \nLC91910362023052LGN01', shape = box3d, fontsize = 18, height = 1.0]
  D22 [label = 'April \nLC91910362023100LGN00', shape = box3d, fontsize = 18, height = 1.0]
  D33 [label = 'July \nLC91910362023196LGN00', shape = box3d, fontsize = 18, height = 1.0]
  }
  # edges
  A -> {A1 A2} [fontcolor = red,
                    color = red, style = dashed]
  B -> {B1 B2} [fontcolor = red,
                    color = red, style = dashed]
  
  A1 -> {A11 A22 A33} [fontcolor = red,
                    color = red, style = dashed]
  A11 -> A22 [fontcolor = red, color = red, style = dashed]
  A22 -> A33 [fontcolor = red, color = red, style = dashed]
  A2 -> {B11 B22 B33} [fontcolor = red,
                    color = red, style = dashed]
  B11 -> B22 [fontcolor = red, color = red, style = dashed]
  B22 -> B33 [fontcolor = red, color = red, style = dashed]
  
  B1 -> {C11 C22 C33} [fontcolor = red,
                    color = red, style = dashed]
  C11 -> C22 [fontcolor = red, color = red, style = dashed]
  C22 -> C33 [fontcolor = red, color = red, style = dashed]
  B2 -> {D11 D22 D33} [fontcolor = red,
                    color = red, style = dashed]
  D11 -> D22 [fontcolor = red, color = red, style = dashed]
  D22 -> D33 [fontcolor = red, color = red, style = dashed]
  
  E [label = 'Data \npreprocessing \nGDAL \nGRASS GIS', fontcolor = darkgreen, shape = component, fontsize = 18, height = 2.5 ]
  B33 -> E [fontcolor = darkgreen,color = darkgreen, style = dashed]
  C33 -> E [fontcolor = darkgreen,color = darkgreen, style = dashed]
  
  F [label = 'Data processing \nGRASS GIS', fontcolor = black, height = 1.5, width = 2.5, shape = tab, fontsize = 20]
  subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  F5 [label = '5. Cartographic visualization \n mapping \nd.rast, d.legend modules', fontcolor = black, shape = rectangle, width = 3.5, height = 1.3, fontsize = 18]
  F4 [label = '4. Accuracy \nassessment', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  F3 [label = '3. Classification\n k-means \ni.maxlik module', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  F2 [label = '2. Clustering \ni.cluster module', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  F1 [label = '1. Grouping \ni.group module', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  }
  
  E -> F [label = ' Data\nimport to \nGRASS GIS',
                   fontcolor = red,
                   color = red, fontsize = 16, style = twodash]
  F -> {F1 F2 F3 F4 F5} [fontcolor = red, color = red, style = dashed]
#  F1 -> F2 [fontcolor = red, color = red, style = dashed]
#  F2 -> F3 [fontcolor = red, color = red, style = dashed]
#  F3 -> F4 [fontcolor = red, color = red, style = dashed]
}
")
