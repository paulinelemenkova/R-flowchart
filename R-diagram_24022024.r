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
  
  A [label = 'Images satellites \nmultispectrales Landsat 8-9 OLI/TIRS', fontsize = 28, color = deeppink1, width=6.0, height = 1, linewidth = 3.0]
  #
  subgraph cluster0 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, fixedsize = false, width = 3.0, color = red]
  #
  A1 [label = 'GRASS SIG \nlogiciel', shape = cylinder, fontsize = 22, color = darkgreen, height = 1.0, width = 3.0, style = rounded]
  }
  #
  # edges
  A -> {A1} [fontcolor = red,
                    color = red, style = dashed]
  
  E [label = 'Prétraitement des \nimages satellites', fontcolor = black, shape = invhouse, fontsize = 23, height = 1.5, width = 3.0, linewidth = 2.0, color = firebrick3, penwidth=2 ]
  #
  subgraph cluster6 {
  node [fillcolor = Bisque, fontname = Helvetica, fontcolor = darkslategray, shape = octagon, fixedsize = true, width = 2.5, height = 1.6, color = darkolivegreen3, linewidth = 4.0]
  E1 [label = 'importer les images \nr.import', fontcolor = black, shape = octagon, width = 3.0, height = 1.6, fontsize = 22, color = darkolivegreen3, penwidth=3]
  E2 [label = 'définir étendue \ncartographique \ng.region', fontcolor = black, shape = octagon, width = 3.0, height = 1.6,fontsize = 22, color = darkolivegreen3, penwidth=3]
  E3 [label = 'générer une liste \ndes fichiers \ng.list rast', fontcolor = black, shape = octagon, width = 3.0, height = 1.6,  fontsize = 22, color = darkolivegreen3, penwidth=3]
  E4 [label = 'visualization \nd.mon wx0', fontcolor = black, shape = octagon, width = 3.0, height = 1.6, fontsize = 22, color = darkolivegreen3, penwidth=3]
  E5 [label = 'enregistrement \ndu fichier \nd.out.file', fontcolor = black, shape = octagon, width = 3.0, height = 1.6, fontsize = 22, color = darkolivegreen3, penwidth=3]
  }
  E1 -> E2 [fontcolor = red, color = red, style = dashed]
  E2 -> E3 [fontcolor = red, color = red, style = dashed]
  E3 -> E4 [fontcolor = red, color = red, style = dashed]
  E4 -> E5 [fontcolor = red, color = red, style = dashed]
  E -> {E1} [fontcolor = red, color = red, style = dashed]
  
  F [label = 'Traitement des \ndonnées raster', fontcolor = black, height = 1.5, width = 3.0, shape = invhouse, fontsize = 23, color = firebrick3, penwidth=2]
  #
  subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 3.0, color = darkslategray]
  F5 [label = 'cartographie \nd.rast, d.legend', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  F4 [label = 'compositions \ncolorées \nr.composite', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  F3 [label = 'copier des \nbandes Landsat \ng.copy', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  F2 [label = 'vérifier les \nmétadonnées \nr.info', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  F1 [label = ' gdalinfo \nr.in.gdal', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = dodgerblue]
  }
  F1 -> F2 [fontcolor = red, color = red, style = dashed]
  F2 -> F3 [fontcolor = red, color = red, style = dashed]
  F3 -> F4 [fontcolor = red, color = red, style = dashed]
  F4 -> F5 [fontcolor = red, color = red, style = dashed]
  
  F -> {F1} [fontcolor = red, color = red, style = dashed]
  #
  G [label = 'Calcul des indices \nde végétation', fontcolor = black, height = 1.5, width = 3.0, shape = invhouse, fontsize = 23, color = firebrick3, penwidth=2]
  #
  subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  G1 [label = 'i.landsat.toar', fontcolor = black, shape = egg, width = 2.5, height = 1.3, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G2 [label = 'i.vi: DVI', fontcolor = black, shape = egg, width = 2.5, height = 1.3, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G3 [label = 'i.vi: SAVI', fontcolor = black, shape = egg, width = 2.5, height = 1.3, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G4 [label = 'i.vi: NDVI', fontcolor = black, shape = egg, width = 2.5, height = 1.3, fontsize = 22, color = goldenrod2, penwidth=3 ]
  G5 [label = 'i.vi: CI', fontcolor = black, shape = egg, width = 2.5, height = 1.3, fontsize = 22, color = goldenrod2, penwidth=3 ]
  }
  G1 -> G2 [fontcolor = red, color = red, style = dashed]
  G2 -> G3 [fontcolor = red, color = red, style = dashed]
  G3 -> G4 [fontcolor = red, color = red, style = dashed]
  G4 -> G5 [fontcolor = red, color = red, style = dashed]
  
  G -> {G1} [fontcolor = red, color = red, style = dashed]
  
  A1 -> {F E G} [fontcolor = red, color = red, style = dashed]
}
")
