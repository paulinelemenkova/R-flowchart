DiagrammeR::grViz("
digraph Polina_diagram {
  
  # graph statement
  graph [layout = dot,
         rankdir = LR,   # layout top-to-bottom
         fontsize = 12]
  
  #subgraph cluster0 {
  node [fillcolor = Bisque, fontname = Helvetica, fontcolor = darkslategray, fixedsize = false, width = 3.0, color = red]
  A [label = 'Input \nData', fontsize = 16, color = darkgreen, height = 1.0, width = 1.0, shape = square, style = rounded]
  #}
  #
  # edges
  subgraph cluster0 {label = 'Input layer'
      
      A2 [label =<X<FONT POINT-SIZE='12'><SUB>1</SUB></FONT>>, fontcolor = cadetblue4, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2 ]
      A3 [label =<X<FONT POINT-SIZE='12'><SUB>2</SUB></FONT>>, fontcolor = cadetblue4, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2 ]
      A1 [label =<X<FONT POINT-SIZE='12'><SUB>n</SUB></FONT>>, fontcolor = cadetblue4, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2 ]
  
  }
 
 A -> {A2 A3 A1 } [fontcolor = red, color = red, style = dashed, minlen = 3]
  

  subgraph cluster1 {label = 'Hidden layer'
  
  H1 [label =<H<FONT POINT-SIZE='12'><SUB>1</SUB></FONT>>, fontcolor = cadetblue4, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2 ]
  Hn [label =<H<FONT POINT-SIZE='12'><SUB>n</SUB></FONT>>, fontcolor = cadetblue4, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2 ]
  }
  
  A1 -> {H1 Hn} [fontcolor = red, color = red, style = dashed, minlen = 3 ]
  A2 -> {H1 Hn} [fontcolor = red, color = red, style = dashed, minlen = 3 ]
  A3 -> {H1 Hn} [fontcolor = red, color = red, style = dashed, minlen = 3 ]
  
  subgraph cluster2 {label = 'Output layer'
  Y [label = 'Y', fontcolor = cadetblue4, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2 ]
  }
  
  H1 -> {Y} [fontcolor = red, color = red, style = dashed, minlen = 3 ]
  Hn -> {Y} [fontcolor = red, color = red, style = dashed, minlen = 3 ]
  
}
")
