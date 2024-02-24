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
  
  A [label = 'Images multispectrales \nLandsat 8-9 OLI/TIRS', fontsize = 22, color = magenta, width=2.5, linewidth = 0.5]
  #
  subgraph cluster0 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.0, color = darkslategray, style = rounded]
  A1 [label = 'GRASS SIG', shape = rectangle, fontsize = 19, height = 1.0, width = 2.5, style = rounded]
  }
  #
  # edges
  A -> {A1} [fontcolor = red,
                    color = red, style = dashed]
  
  E [label = 'Prétraitement des \nimages satellites', fontcolor = darkgreen, shape = component, fontsize = 18, height = 1.5 ]
  
  subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  E1 [label = '1. importer les images \nr.import', fontcolor = black, shape = rectangle, width = 3.5, height = 1.3, fontsize = 18]
  E2 [label = '2. définir étendue \ncartographique \ng.region', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  E3 [label = '3. générer une liste \ndes fichiers \nr.list', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  E4 [label = '4. visualization \nd.mon wx0', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  E5 [label = '5. enregistrement \ndu fichier \nd.out.file', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  }
  E1 -> E2 [fontcolor = red, color = red, style = dashed]
  E2 -> E3 [fontcolor = red, color = red, style = dashed]
  E3 -> E4 [fontcolor = red, color = red, style = dashed]
  E4 -> E5 [fontcolor = red, color = red, style = dashed]
  E -> {E1} [fontcolor = red, color = red, style = dashed]
  
  F [label = 'Traitement des \ndonnées raster', fontcolor = black, height = 1.5, width = 2.5, shape = component, fontsize = 20]
  subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  F5 [label = '5. cartographie \nd.rast, d.legend', fontcolor = black, shape = rectangle, width = 3.5, height = 1.3, fontsize = 18]
  F4 [label = '4. compositions \ncolorées \nr.composite', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  F3 [label = '3. copier des bandes \nLandsat \ng.list rast \ng.copy', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  F2 [label = '2. vérifier les \nmétadonnées \nr.info', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  F1 [label = '1. gdalinfo \nr.in.gdal', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  }
  F1 -> F2 [fontcolor = red, color = red, style = dashed]
  F2 -> F3 [fontcolor = red, color = red, style = dashed]
  F3 -> F4 [fontcolor = red, color = red, style = dashed]
  F4 -> F5 [fontcolor = red, color = red, style = dashed]
  
  F -> {F1 F2 F3 F4 F5} [fontcolor = red, color = red, style = dashed]
  #
  G [label = 'Calcul des indices \nde végétation', fontcolor = black, height = 1.5, width = 2.5, shape = component, fontsize = 20]
  subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  G1 [label = 'i.landsat.toar', fontcolor = black, shape = rectangle, width = 3.5, height = 1.3, fontsize = 18]
  G2 [label = 'i.vi: DVI', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  G3 [label = 'i.vi: SAVI', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  G4 [label = 'i.vi: NDVI', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  G5 [label = 'i.vi: CI', fontcolor = black, shape = rectangle, width = 2.5, height = 1.3, fontsize = 18]
  }
  G1 -> G2 [fontcolor = red, color = red, style = dashed]
  G2 -> G3 [fontcolor = red, color = red, style = dashed]
  G3 -> G4 [fontcolor = red, color = red, style = dashed]
  G4 -> G5 [fontcolor = red, color = red, style = dashed]
  
  G -> {G1 G2 G3 G4 G5} [fontcolor = red, color = red, style = dashed]
  
  A1 -> {F E G} [fontcolor = red, color = red, style = dashed]
}
")
