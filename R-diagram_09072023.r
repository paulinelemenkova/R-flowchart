DiagrammeR::grViz("
digraph Polina_diagram {
  
  # graph statement
  graph [layout = dot,
         rankdir = TB,   # layout top-to-bottom
         fontsize = 10]
  
  # nodes (circles)
  node [shape = circle,
       fixedsize = true
       width = 1.3]
  
  A [label = 'Time Series\nLandsat 8-9\nImages \nOLI sensor']
  subgraph cluster0 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.2, color = darkslategray]
  B1 [label = 'B1: Coastal \naerosol', shape = rectangle]
  B2 [label = 'B2: Blue', shape = rectangle, width = 1.0]
  B3 [label = 'B3: Green', shape = rectangle, width = 1.0]
  B4 [label = 'B4: Red', shape = rectangle, width = 1.0]
  B5 [label = 'B5: NIR', shape = rectangle, width = 1.0]
  B6 [label = 'B6: SWIR-1', shape = rectangle]
  B7 [label = 'B7: SWIR-2', shape = rectangle]
  }
  C [label = 'Selecting \nBands', shape = tab]
  D [label = 'Data \nPreprocessing', fontcolor = darkgreen, shape = folder]
  E [label = 'Calculation \nVI', fontcolor = darkgreen]
  F [label = 'Classification\nk-means', fontcolor = darkgreen]
  E1 [label = 'EVI', fontcolor = purple, shape = parallelogram]
  E2 [label = 'SAVI', fontcolor = purple, shape = parallelogram]
  E3 [label = 'NDVI', fontcolor = purple, shape = parallelogram]
  F1 [label = 'Raster Stack', fontcolor = purple, shape = invhouse, width = 1.5]
  F2 [label = 'Raster Brick', fontcolor = purple, shape = invhouse, width = 1.5]
  F3 [label = 'Clustering', fontcolor = purple, shape = invhouse, width = 1.5]
  F4 [label = 'Mapping', fontcolor = purple, shape = invhouse, width = 1.5]
  F5 [label = 'Accuracy \nAssessment', fontcolor = purple, shape = trapezium, width = 2.0]
  E4 [label = 'Equation', fontcolor = purple, shape = parallelogram]
  E5 [label = 'Script', fontcolor = purple, shape = parallelogram]
  E6 [label = 'Histogram', fontcolor = purple, shape = parallelogram]
  E7 [label = 'Mapping', fontcolor = purple, shape = parallelogram]
  
  # edges
  A -> {B1 B2 B3 B4 B5 B6 B7} [fontcolor = red,
                    color = red, style = dashed]
  C -> D [label = ' Data\nImport',
                    fontcolor = red,
                    color = red]

  # grouped edge
  {B1 B2 B3 B4 B5 B6 B7} -> C [fontcolor = darkgreen, color = darkgreen, style = dashed]
   D -> {E F} [fontcolor = red, color = red]
   E -> {E1 E2 E3} [fontcolor = red, color = red, style = dashed]
   F -> F1 [fontcolor = red, color = red, style = dashed]
   F1 -> F2 [fontcolor = red, color = red, style = dashed]
   F2 -> F3 [fontcolor = red, color = red, style = dashed]
   F3 -> F4 [fontcolor = red, color = red, style = dashed]
   F4 -> F5 [fontcolor = red, color = red, style = dashed]
   {E1 E2 E3} -> E4 [fontcolor = darkgreen,color = darkgreen, style = dashed]
   E4 -> E5 [fontcolor = red, color = red, style = dashed]
   E5 -> E6 [fontcolor = red, color = red, style = dashed]
   E6 -> E7 [fontcolor = red, color = red, style = dashed]
}
")
