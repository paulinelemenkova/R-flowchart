DiagrammeR::grViz("
digraph Polina_diagram {
  
  # graph statement
  graph [layout = dot,
         rankdir = TB,   # layout top-to-bottom
         fontsize = 12]
  
  subgraph cluster0 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, fixedsize = false, width = 3.0, color = red]
  A [label = 'Geospatial Analysis', shape = cylinder, fontsize = 22, color = darkgreen, height = 1.0, width = 3.0, style = rounded]
  }
  #
  # edges
  
  A2 [label = 'Vector (.shp) \nAdministrative Data', fontcolor = black, height = 1.5, width = 3.0, shape = egg, fontsize = 23, color = dodgerblue, penwidth=2 ]
  A3 [label = 'Topographic \nGEBCO Data', fontcolor = black, height = 1.5, width = 3.0, shape = egg, fontsize = 23, color = goldenrod2, penwidth=3 ]
  A1 [label = 'Satellite \nLandsat Data', fontcolor = black, shape = egg, fontsize = 23, height = 1.5, width = 3.0, linewidth = 2.0, color = firebrick3, penwidth=2 ]
  A4 [label = 'Descriptive \nData', fontcolor = black, height = 1.5, width = 3.0, shape = egg, fontsize = 23, color = firebrick4, penwidth=3 ]
  
  A -> {A1 A2 A3 A4} [fontcolor = red, color = red, style = dashed]
  
  
  subgraph cluster1 {
  node [fillcolor = Bisque, fontname = Helvetica, fontcolor = darkslategray, shape = octagon, fixedsize = true, width = 2.5, height = 1.6, color = darkolivegreen3, linewidth = 4.0]
  A11 [label = 'GRASS GIS \nv.8.3', fontcolor = black, shape = egg, width = 3.0, height = 1.3, fontsize = 22, color = darkolivegreen4, penwidth=3]
  }
  
  A1 -> {A11} [fontcolor = red, color = red, style = dashed]

  #
  subgraph cluster2 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 3.0, color = darkslategray]
  A22 [label = 'QGIS \nv.3.34', fontcolor = black, shape = octagon, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  }
  
  A2 -> {A22} [fontcolor = red, color = red, style = dashed]
  #
  subgraph cluster3 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A33 [label = 'GMT \nv.6.4.0', fontcolor = black, shape = septagon, width = 3.0, height = 1.3, fontsize = 22, color = goldenrod2, penwidth=2 ]
  }
  
  A3 -> {A33} [fontcolor = red, color = red, style = dashed]
  
  subgraph cluster4 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A44 [label = 'Literature \nReview', fontcolor = black, shape = hexagon, width = 3.0, height = 1.3, fontsize = 22, color = firebrick3, penwidth=2 ]
  }
  
  A4 -> {A44} [fontcolor = red, color = red, style = dashed]
  
  subgraph cluster5 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A333 [label = 'Shaded \nrelief', fontcolor = black, shape = septagon, width = 3.0, height = 1.3, fontsize = 22, color = goldenrod2, penwidth=2 ]
  }
  A33 -> {A333} [fontcolor = red, color = red, style = dashed]
  
  subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A3333 [label = 'Contour \nmap', fontcolor = black, shape = septagon, width = 3.0, height = 1.3, fontsize = 22, color = goldenrod2, penwidth=2 ]
  }
  A333 -> {A3333} [fontcolor = red, color = red, style = dashed]
  
  subgraph cluster7 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A33333 [label = 'Terrain \nfactor', fontcolor = black, shape = septagon, width = 3.0, height = 1.3, fontsize = 22, color = goldenrod2, penwidth=2 ]
  }
  A3333 -> {A33333} [fontcolor = red, color = red, style = dashed]
  
  subgraph cluster8 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A222 [label = 'Transformation to \nlector layer', fontcolor = black, shape = octagon, width = 3.0, height = 1.3, fontsize = 22, color = dodgerblue, penwidth=3 ]
  }
  A22 -> {A222} [fontcolor = red, color = red, style = dashed]
  
  subgraph cluster9 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A2222 [label = 'Spatial \nlocation \nfactor', fontcolor = black, shape = octagon, width = 3.0, height = 1.3, fontsize = 22, color = dodgerblue, penwidth=3 ]
  }
  A222 -> {A2222} [fontcolor = red, color = red, style = dashed]
  
  subgraph cluster10 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A444 [label = 'Related \nWorks & Cases', fontcolor = black, shape = hexagon, width = 3.0, height = 1.3, fontsize = 22, color = firebrick2, penwidth=2 ]
  }
  A44 -> {A444} [fontcolor = red, color = red, style = dashed]
  
  subgraph cluster11 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A4444 [label = 'Analysis of \nExisting Methods', fontcolor = black, shape = hexagon, width = 3.0, height = 1.3, fontsize = 22, color = firebrick1, penwidth=2 ]
  }
  A444 -> {A4444} [fontcolor = red, color = red, style = dashed]
  
  subgraph cluster12 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A111 [label = 'Data \nImport: r.import', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, color = darkolivegreen3, penwidth=3 ]
  }
  A11 -> {A111} [fontcolor = red, color = red, style = dashed]
  
  subgraph cluster12 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A111a [label = 'Clustering: \ni.cluster', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, color = darkolivegreen2, penwidth=3 ]
  }
  A111 -> {A111a} [fontcolor = red, color = red, style = dashed]
  subgraph cluster12 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A111b [label = 'Classification: \ni.maxlik', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, color = darkolivegreen1, penwidth=3 ]
  }
  A111a -> {A111b} [fontcolor = red, color = red, style = dashed]
  subgraph cluster13 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A111c [label = 'Machine Learning: \nr.random, r.learn.train, \nr.learn.predict', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, color = darkolivegreen3, penwidth=3 ]
  }
  A111b -> {A111c} [fontcolor = red, color = red, style = dashed]
  subgraph cluster13 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  A111d [label = 'Accuracy \nAssessment: \nchi-square text', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, color = darkolivegreen3, penwidth=3 ]
  }
  A111c -> {A111d} [fontcolor = red, color = red, style = dashed]
  A4444 -> {A111c} [fontcolor = red, color = red, style = dashed]
  
  subgraph cluster14 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  B [label = 'Thematic \nMapping', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, color = goldenrod2, penwidth=2 ]
  }
  
  A33333 -> {B} [fontcolor = red, color = red, style = dashed]
  A2222 -> {B} [fontcolor = red, color = red, style = dashed]
  A111c -> {B} [fontcolor = red, color = red, style = dashed]
}
")
