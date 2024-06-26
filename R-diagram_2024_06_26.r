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
  
  A [label = 'Coastal mapping by RS data\nand GRASS GIS software', fontsize = 28, color = deeppink1, width=5.0, height = 1, linewidth = 3.0]
  #
  subgraph {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, fixedsize = false, width = 3.0, color = red]
  #
  A0 [label = 'Data: Landsat images \n2013, 2015, 2017, 2024', shape = cylinder, fontsize = 22, color = darkgreen, height = 1.0, width = 3.0, style = rounded]
  }
  subgraph {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, fixedsize = false, width = 3.0, color = red]
  #
  A1 [label = 'GRASS SIG \nconsole-based scripts', shape = cylinder, fontsize = 22, color = darkgreen, height = 1.0, width = 3.0, style = rounded]
  }
  #
  # edges
  A -> {A0} [fontcolor = red,
                    color = red, style = dashed]
  A0 -> {A1} [fontcolor = red,
                    color = red, style = dashed]
  
  H [label = 'Image Import \n r.import', fontcolor = black, shape = ellipse, fontsize = 23, height = 1.5, width = 3.0, linewidth = 2.0, color = '#1e50a2', penwidth=3 ]
  E [label = 'Image \nPreprocessing', fontcolor = black, shape = ellipse, fontsize = 23, height = 1.5, width = 3.0, linewidth = 2.0, color = '#1e50a2', penwidth=3 ]
  K [label = 'Cartographic \nHandling', fontcolor = black, shape = ellipse, fontsize = 23, height = 1.5, width = 3.0, linewidth = 2.0, color = '#1e50a2', penwidth=3 ]
  #
  subgraph cluster3 {
  node [fillcolor = Bisque, fontname = Helvetica, fontcolor = darkslategray, shape = octagon, fixedsize = true, width = 2.2, height = 1.6, color = darkolivegreen3, linewidth = 4.0]
  F4 [label = 'file control \ng.list rast', fontcolor = black, shape = ellipse, width = 3.0, height = 1.6,  fontsize = 22, color = '#e60033', penwidth=3]
  F3 [label = 'copying Landsat \nbandes g.copy', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = '#e60033']
  F2 [label = 'metadata check \nr.info, r.category', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = '#e60033']
  F1 [label = ' gdalinfo \nr.in.gdal', fontcolor = black, shape = ellipse, width = 2.8, height = 1.3, fontsize = 22, penwidth=3, color = '#e60033']
  }
  #
  H -> {F1} [fontcolor = red, color = red, style = dashed]
  F1 -> F2 [fontcolor = red, color = red, style = dashed]
  F2 -> F3 [fontcolor = red, color = red, style = dashed]
  F3 -> F4 [fontcolor = red, color = red, style = dashed]
  #
  subgraph cluster5 {
  node [fillcolor = Bisque, fontname = Helvetica, fontcolor = darkslategray, shape = octagon, fixedsize = true, width = 2.2, height = 1.6, color = darkolivegreen3, linewidth = 4.0]
  I2 [label = 'atmospheric \ncalibration \ni.landsat.toar', fontcolor = black, shape = ellipse, width = 2.7, height = 1.6,fontsize = 22, color = '#ffd900', penwidth=3]
  I3 [label = 'geometric \ncorrection \ni.rectify', fontcolor = black, shape = ellipse, width = 2.7, height = 1.6,  fontsize = 22, color = '#ffd900', penwidth=3]
  I4 [label = 'cloud filtering \n i.landsat.acca', fontcolor = black, shape = ellipse, width = 2.7, height = 1.6, fontsize = 22, color = '#ffd900', penwidth=3]
  I5 [label = 'terrain \ncorrection \ni.topo.corr', fontcolor = black, shape = ellipse, width = 2.7, height = 1.6, fontsize = 22, color = '#ffd900', penwidth=3]
  I6 [label = 'channel-wise \ngrouping \ni.group', fontcolor = black, shape = ellipse, width = 2.7, height = 1.6, fontsize = 22, color = '#ffd900', penwidth=3]
  
  }
  E -> I2 [fontcolor = red, color = red, style = dashed]
  I2 -> I3 [fontcolor = red, color = red, style = dashed]
  I3 -> I4 [fontcolor = red, color = red, style = dashed]
  I4 -> I5 [fontcolor = red, color = red, style = dashed]
  I5 -> I6 [fontcolor = red, color = red, style = dashed]
  #
  subgraph cluster4 {
  node [fillcolor = Bisque, fontname = Helvetica, fontcolor = darkslategray, shape = octagon, fixedsize = true, width = 2.5, height = 1.6, color = darkolivegreen3, linewidth = 4.0]
  E2 [label = 'defining extent \ng.region', fontcolor = black, shape = ellipse, width = 2.5, height = 1.6,fontsize = 22, color = '#674196', penwidth=3]
  E3 [label = 'visualization \nd.mon wx0', fontcolor = black, shape = ellipse, width = 2.5, height = 1.6, fontsize = 22, color = '#674196', penwidth=3]
  E4 [label = 'mapping \nd.rast, d.legend', fontcolor = black, shape = ellipse, width = 2.5, height = 1.3, fontsize = 22, penwidth=3, color = '#674196']
  E5 [label = 'color composites \nr.composite', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = '#674196']
  E6 [label = 'Color palette \nr.colors', fontcolor = black, shape = ellipse, width = 2.5, height = 1.6, fontsize = 22, color = '#674196', penwidth=3]
  E7 [label = 'exporting \nfiles \nd.out.file', fontcolor = black, shape = ellipse, width = 2.5, height = 1.6, fontsize = 22, color = '#674196', penwidth=3]
  }
  K -> E2 [fontcolor = red, color = red, style = dashed]
  E2 -> E3 [fontcolor = red, color = red, style = dashed]
  E3 -> E4 [fontcolor = red, color = red, style = dashed]
  E4 -> E5 [fontcolor = red, color = red, style = dashed]
  E5 -> E6 [fontcolor = red, color = red, style = dashed]
  E6 -> E7 [fontcolor = red, color = red, style = dashed]
  
  F [label = 'Machine Learning', fontcolor = black, height = 1.5, width = 3.0, shape = ellipse, fontsize = 23, color = '#1e50a2', penwidth=3]
  #
  subgraph cluster2 {
  node [fillcolor = Bisque, fontname = Helvetica, fontcolor = darkslategray, shape = octagon, fixedsize = true, width = 2.5, height = 1.6, color = darkolivegreen3, linewidth = 4.0]
  J1 [label = 'Random Forest \n(RF)', fontcolor = black, shape = ellipse, width = 2.5, height = 1.6,fontsize = 22, color = '#bb5548', penwidth=3]
  J2 [label = 'Support Vector \nMachine (SVM)', fontcolor = black, shape = ellipse, width = 2.5, height = 1.6, fontsize = 22, color = '#bb5548', penwidth=3]
  J3 [label = 'Artificial Neural \nNetwork (ANN)', fontcolor = black, shape = ellipse, width = 2.5, height = 1.3, fontsize = 22, penwidth=3, color = '#bb5548']
  J4 [label = 'Multi-layer \nPerceptron (MLP)', fontcolor = black, shape = ellipse, width = 3.0, height = 1.3, fontsize = 22, penwidth=3, color = '#bb5548']
  J5 [label = 'Decision Tree \nClassifier (DTC)', fontcolor = black, shape = ellipse, width = 2.5, height = 1.6, fontsize = 22, color = '#bb5548', penwidth=3]
  J6 [label = 'randomly placed \ncells r.random ', fontcolor = black, shape = ellipse, width = 2.5, height = 1.6, fontsize = 22, color = '#bb5548', penwidth=3]
  J7 [label = 'Supervised \nclassification \nr.learn.train', fontcolor = black, shape = ellipse, width = 2.7, height = 1.6, fontsize = 22, color = '#bb5548', penwidth=3]
  J8 [label = 'Scikit-Learn \nestimator \nr.learn.predict', fontcolor = black, shape = ellipse, width = 2.7, height = 1.6, fontsize = 22, color = '#bb5548', penwidth=3]
  }
  F -> J1 [fontcolor = red, color = red, style = dashed]
  J1 -> J2 [fontcolor = red, color = red, style = dashed]
  J2 -> J3 [fontcolor = red, color = red, style = dashed]
  J3 -> J4 [fontcolor = red, color = red, style = dashed]
  J4 -> J5 [fontcolor = red, color = red, style = dashed]
  J5 -> J6 [fontcolor = red, color = red, style = dashed]
  J6 -> J7 [fontcolor = red, color = red, style = dashed]
  J7 -> J8 [fontcolor = red, color = red, style = dashed]
  #
  G [label = 'Classification', fontcolor = black, height = 1.5, width = 3.0, shape = ellipse, fontsize = 23, color = '#1e50a2', penwidth=3]
  #
  subgraph cluster6 {
  node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
  G1 [label = 'Maximum likelihood \nClassifier: ni.maxlik', fontcolor = black, shape = egg, width = 3.0, height = 1.8, fontsize = 22, color = '#00552e', penwidth=3 ]
  G2 [label = 'Clustering \nsignaturefile \ni.cluster', fontcolor = black, shape = egg, width = 3.0, height = 2.0, fontsize = 22, color = '#00552e', penwidth=3 ]
  G3 [label = 'Iterative cycles', fontcolor = black, shape = egg, width = 3.0, height = 2.0, fontsize = 22, color = '#00552e', penwidth=3 ]
  G4 [label = 'Rejection \nprobability \naccuracy chi-square', fontcolor = black, shape = egg, width = 3.0, height = 2.0, fontsize = 22, color = '#00552e', penwidth=3 ]
  G5 [label = 'Statistical report \nreportfile', fontcolor = black, shape = egg, width = 3.0, height = 1.3, fontsize = 22, color = '#00552e', penwidth=3 ]
  G6 [label = 'Computing class \nseparability \nmatrices', fontcolor = black, shape = egg, width = 3.0, height = 1.8, fontsize = 22, color = '#00552e', penwidth=3 ]
  }
  G1 -> G2 [fontcolor = red, color = red, style = dashed]
  G2 -> G3 [fontcolor = red, color = red, style = dashed]
  G3 -> G4 [fontcolor = red, color = red, style = dashed]
  G4 -> G5 [fontcolor = red, color = red, style = dashed]
  G5 -> G6 [fontcolor = red, color = red, style = dashed]
  
  G -> {G1} [fontcolor = red, color = red, style = dashed]
  
  A1 -> {F E G H K} [fontcolor = red, color = red, style = dashed]
}
")
