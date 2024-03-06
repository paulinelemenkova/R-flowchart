DiagrammeR::grViz("
digraph Polina_diagram {
  
  # graph statement
  graph [layout = dot,
         rankdir = LR,   # layout top-to-bottom
         fontsize = 12]
  
  subgraph cluster0 {label = 'Input layers'
  Z1 [label = <X<FONT POINT-SIZE='12'><SUB>1</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Tomato1, style=filled ]
  Z2 [label = <X<FONT POINT-SIZE='12'><SUB>2</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = OrangeRed1, style=filled ]
  }
  #
  # edges
  subgraph cluster1 {label = 'Hidden layers'
      A2 [label =<a<FONT POINT-SIZE='12'><SUB>2</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Orange2, style=filled ]
      A3 [label =<a<FONT POINT-SIZE='12'><SUB>1</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Orange1, style=filled ]
      A4 [label =<a<FONT POINT-SIZE='12'><SUB>n</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Orange4, style=filled ]
      A1 [label =<a<FONT POINT-SIZE='12'><SUB>3</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Orange3, style=filled ]
  }
 
 Z1 -> {A1 A4 A3 A2 } [fontcolor = white, color = cadetblue4, style = dashed, minlen = 2.0, arrow = crow]
 Z2 -> {A1 A4 A3 A2 } [fontcolor = white, color = cadetblue4, style = dashed, minlen = 2.0, arrow = crow]
  

  subgraph cluster1 {label = 'Hidden layers'
      
      B2 [label =<b<FONT POINT-SIZE='12'><SUB>2</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Gold2, style=filled ]
      B4 [label =<b<FONT POINT-SIZE='12'><SUB>1</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Gold1, style=filled ]
      B1 [label =<b<FONT POINT-SIZE='12'><SUB>n</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Gold4, style=filled ]
      B3 [label =<b<FONT POINT-SIZE='12'><SUB>3</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Gold3, style=filled ]
  
  }
  
  A1 -> {B1 B2 B3 B4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  A2 -> {B1 B2 B3 B4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  A3 -> {B1 B2 B3 B4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  A4 -> {B1 B2 B3 B4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  
  subgraph cluster1 {label = 'Hidden layers'
      
      C2 [label =<c<FONT POINT-SIZE='12'><SUB>2</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Chartreuse2, style=filled ]
      C3 [label =<c<FONT POINT-SIZE='12'><SUB>n</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Chartreuse4, style=filled ]
      C4 [label =<c<FONT POINT-SIZE='12'><SUB>1</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Chartreuse1, style=filled ]
      C1 [label =<c<FONT POINT-SIZE='12'><SUB>3</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Chartreuse3, style=filled ]
  
  }
  
  B1 -> {C1 C2 C3 C4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  B2 -> {C1 C2 C3 C4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  B3 -> {C1 C2 C3 C4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  B4 -> {C1 C2 C3 C4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  
  subgraph cluster1 {label = 'Hidden layers'
      
      D2 [label =<d<FONT POINT-SIZE='12'><SUB>1</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = DodgerBlue1, style=filled ]
      D3 [label =<d<FONT POINT-SIZE='12'><SUB>2</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = DodgerBlue2, style=filled ]
      D4 [label =<d<FONT POINT-SIZE='12'><SUB>3</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = DodgerBlue3, style=filled ]
      D1 [label =<d<FONT POINT-SIZE='12'><SUB>n</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = DodgerBlue4, style=filled ]
  
  }
  
  C1 -> {D1 D2 D3 D4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  C2 -> {D1 D2 D3 D4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  C3 -> {D1 D2 D3 D4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  C4 -> {D1 D2 D3 D4} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 2.0 ]
  
  subgraph cluster5 {label = 'Output layers'
  Y1 [label = <Y<FONT POINT-SIZE='12'><SUB>1</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = Violet, style=filled ]
  Y2 [label = <Y<FONT POINT-SIZE='12'><SUB>2</SUB></FONT>>, fontcolor = white, shape = circle, height = 1.0, width = 1.0, fontsize = 18, color = cadetblue4, penwidth=2, fillcolor = MediumSlateBlue, style=filled ]
  }
  
  D1 -> {Y1} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 3 ]
  D2 -> {Y1} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 3 ]
  D3 -> {Y1} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 3 ]
  D4 -> {Y1} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 3 ]
  D1 -> {Y2} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 3 ]
  D2 -> {Y2} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 3 ]
  D3 -> {Y2} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 3 ]
  D4 -> {Y2} [fontcolor = cadetblue4, color = cadetblue4, style = dashed, minlen = 3 ]
  
}
")
