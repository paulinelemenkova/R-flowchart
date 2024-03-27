DiagrammeR::grViz("
digraph Polina_diagram {
  
  # graph statement
  graph [layout = dot,
         rankdir = TB,   # layout top-to-bottom
         fontsize = 12]
  
  # nodes (circles)
  node [shape = underline,
       fixedsize = true
       width = 5.0]
  
  A [label = 'Multispectral satellites images \nLandsat 8-9 OLI/TIRS', fontsize = 28, color = deeppink1, width=6.0, height = 1, linewidth = 3.0]
  #
  #subgraph cluster0 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, fixedsize = false, width = 3.0, color = red]
  #
  A01 [label = '2014', fontcolor = black, shape = rectangle, width = 2.0, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  A02 [label = '2021', fontcolor = black, shape = rectangle, width = 2.0, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  A03 [label = '2022', fontcolor = black, shape = rectangle, width = 2.0, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  A04 [label = '2023', fontcolor = black, shape = rectangle, width = 2.0, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  A1 [label = 'GRASS GIS \nsoftware', shape = cylinder, fontsize = 22, color = darkgreen, height = 1.0, width = 3.0, style = rounded]
 # }
  #
  # edges
  A -> {A01} [fontcolor = red,color = red, style = dashed]
  A -> {A02} [fontcolor = red, color = red, style = dashed]
  A -> {A03} [fontcolor = red, color = red, style = dashed]
  A -> {A04} [fontcolor = red, color = red, style = dashed]
  A01 -> {A1} [fontcolor = red, color = red, style = dashed]
  A02 -> {A1} [fontcolor = red, color = red, style = dashed]
  A03 -> {A1} [fontcolor = red, color = red, style = dashed]
  A04 -> {A1} [fontcolor = red, color = red, style = dashed]
  
  E [label = 'Satellite Image \nPre-processing', fontcolor = black, shape = egg, fontsize = 23, height = 1.5, width = 3.0, linewidth = 2.0, color = firebrick3, penwidth=2 ]
  #
 # subgraph cluster6 {
  node [fillcolor = Bisque, fontname = Helvetica, fontcolor = darkslategray, shape = octagon, fixedsize = true, width = 2.5, height = 1.6, color = darkolivegreen3, linewidth = 4.0]
  E1 [label = 'Import: module \nr.import', fontcolor = black, shape = octagon, width = 3.0, height = 1.6, fontsize = 22, color = darkolivegreen3, penwidth=3]
  E2 [label = 'Geographic \nextent: module \ng.region', fontcolor = black, shape = octagon, width = 3.0, height = 1.6,fontsize = 22, color = darkolivegreen3, penwidth=3]
  E3 [label = 'Listing the \nfiles: module \ng.list rast', fontcolor = black, shape = octagon, width = 3.0, height = 1.6,  fontsize = 22, color = darkolivegreen3, penwidth=3]
  E4 [label = 'Visualization: \nmodule d.mon wx0', fontcolor = black, shape = octagon, width = 3.0, height = 1.6, fontsize = 22, color = darkolivegreen3, penwidth=3]
  E5 [label = 'Export and saving \nthe data: module \nd.out.file', fontcolor = black, shape = octagon, width = 3.0, height = 1.6, fontsize = 22, color = darkolivegreen3, penwidth=3]
  #}
  E1 -> E2 [fontcolor = red, color = red, style = dashed]
  E2 -> E3 [fontcolor = red, color = red, style = dashed]
  E3 -> E4 [fontcolor = red, color = red, style = dashed]
  E4 -> E5 [fontcolor = red, color = red, style = dashed]
  E -> {E1} [fontcolor = red, color = red, style = dashed]
  
  F [label = 'Satellite Image \nProcessing', fontcolor = black, height = 1.5, width = 3.0, shape = egg, fontsize = 23, color = firebrick3, penwidth=2]
  #
  #subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 3.0, color = darkslategray]
  F6 [label = 'Clustering: i.cluster \nClassification: i.maxlik ', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  F5 [label = 'Mapping: modules \nd.rast, d.legend', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  F4 [label = 'Color composites \n module r.composite', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  F3 [label = 'Multispectral \nLandsat bandes: \n module g.copy', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  F2 [label = 'Check the \nmetadata \nr.info', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  F1 [label = ' gdalinfo \nr.in.gdal', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  #}
  F1 -> F2 [fontcolor = red, color = red, style = dashed]
  F2 -> F3 [fontcolor = red, color = red, style = dashed]
  F3 -> F4 [fontcolor = red, color = red, style = dashed]
  F4 -> F5 [fontcolor = red, color = red, style = dashed]
  F5 -> F6 [fontcolor = red, color = red, style = dashed]
  
  F -> {F1} [fontcolor = red, color = red, style = dashed]
  #
  G [label = 'Machine Learning\nDeep Learning', fontcolor = black, height = 1.5, width = 3.0, shape = egg, fontsize = 23, color = firebrick3, penwidth=2]
  #
  #subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  G2 [label = 'Image 2014: \ntraining data \n', fontcolor = black, shape = egg, width = 2.5, height = 1.3, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G3 [label = 'Image \n2021', fontcolor = black, shape = rectangle, width = 1.5, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G4 [label = 'Image \n2022', fontcolor = black, shape = rectangle, width = 1.5, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G5 [label = 'Image \n2023', fontcolor = black, shape = rectangle, width = 1.5, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G6 [label = 'r.learn.train', fontcolor = black, shape = rectangle, width = 2.0, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G7 [label = 'r.random', fontcolor = black, shape = rectangle, width = 2.5, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G8 [label = 'r.learn.predict', fontcolor = black, shape = rectangle, width = 2.5, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G9 [label = 'r.category', fontcolor = black, shape = rectangle, width = 2.5, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G10 [label = 'Mapping \nd.rast d.legend', fontcolor = black, shape = rectangle, width = 2.5, height = 1.0, fontsize = 22, color = goldenrod2, penwidth=3 ]
  #}
  G2 -> G3 [fontcolor = red, color = red, style = dashed]
  G2 -> G4 [fontcolor = red, color = red, style = dashed]
  G2 -> G5 [fontcolor = red, color = red, style = dashed]
  G3 -> G6 [fontcolor = red, color = red, style = dashed]
  G4 -> G6 [fontcolor = red, color = red, style = dashed]
  G5 -> G6 [fontcolor = red, color = red, style = dashed]
  G6 -> G7 [fontcolor = red, color = red, style = dashed]
  G7 -> G8 [fontcolor = red, color = red, style = dashed]
  G8 -> G9 [fontcolor = red, color = red, style = dashed]
  G9 -> G10 [fontcolor = red, color = red, style = dashed]
  
  G -> {G2} [fontcolor = red, color = red, style = dashed]
  
  A1 -> {F E G} [fontcolor = red, color = red, style = dashed]
}
")
