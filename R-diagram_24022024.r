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
  
  A [label = 'Remote Sensing', fontsize = 22, color = magenta, width=2.5, linewidth = 0.5]
  #
  subgraph cluster0 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.0, color = darkslategray, style = rounded]
  A1 [label = 'GRASS GIS', shape = rectangle, fontsize = 19, height = 1.0, width = 2.5, style = rounded]
  }
  #
  # edges
  A -> {A1} [fontcolor = red,
                    color = red, style = dashed]
  
  E [label = 'Image \npreprocessing', fontcolor = darkgreen, shape = component, fontsize = 18, height = 1.5 ]
  
  subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  E1 [label = '1. r.import', fontcolor = black, shape = rectangle, width = 3.5, height = 1.3, fontsize = 18]
  E2 [label = '2. g.region', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  E3 [label = '3. r.list', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  E4 [label = '4. i.landsat.toar', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  E5 [label = '5. r.composite', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  }
  E1 -> E2 [fontcolor = red, color = red, style = dashed]
  E2 -> E3 [fontcolor = red, color = red, style = dashed]
  E3 -> E4 [fontcolor = red, color = red, style = dashed]
  E4 -> E5 [fontcolor = red, color = red, style = dashed]
  E -> {E1} [fontcolor = red, color = red, style = dashed]
  
 # E3 -> F [fontcolor = red, color = red, style = dashed]
  
  F [label = 'Image \nprocessing', fontcolor = black, height = 1.5, width = 2.5, shape = component, fontsize = 20]
  subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  F5 [label = '5. Cartographic visualization \n mapping \nd.rast, d.legend modules', fontcolor = black, shape = rectangle, width = 3.5, height = 1.3, fontsize = 18]
  F4 [label = '4. Accuracy \nassessment', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  F3 [label = '3. Classification\n k-means \ni.maxlik module', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  F2 [label = '2. Clustering \ni.cluster module', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  F1 [label = '1. Grouping \ni.group module', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  }
  F1 -> F2 [fontcolor = red, color = red, style = dashed]
  F2 -> F3 [fontcolor = red, color = red, style = dashed]
  F3 -> F4 [fontcolor = red, color = red, style = dashed]
  F4 -> F5 [fontcolor = red, color = red, style = dashed]
  
  F -> {F1 F2 F3 F4 F5} [fontcolor = red, color = red, style = dashed]
  #
  G [label = 'Machine \nLearning', fontcolor = black, height = 1.5, width = 2.5, shape = component, fontsize = 20]
  subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  G1 [label = 'r.random', fontcolor = black, shape = rectangle, width = 3.5, height = 1.3, fontsize = 18]
  G2 [label = 'i.group', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  G3 [label = 'r.learn.train', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  G4 [label = 'r.learn.predict', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  G5 [label = 'r.category', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  }
  G1 -> G2 [fontcolor = red, color = red, style = dashed]
  G2 -> G3 [fontcolor = red, color = red, style = dashed]
  G3 -> G4 [fontcolor = red, color = red, style = dashed]
  G4 -> G5 [fontcolor = red, color = red, style = dashed]
  
  G -> {G1 G2 G3 G4 G5} [fontcolor = red, color = red, style = dashed]
  
  A1 -> {F E G} [fontcolor = red, color = red, style = dashed]
}
")
