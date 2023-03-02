# https://rich-iannone.github.io/DiagrammeR/graphviz_and_mermaid.html
library(DiagrammeR)
grViz("
digraph dot {

graph [layout = dot]
graph [compound = true, nodesep = .5, ranksep = .25,
         color = crimson]
         
node [shape = circle,
      style = filled,
      color = grey,
      label = '']

node [fillcolor = DeepPink, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.5, color = darkslategray]
a [label = 'Workflow']

node [fillcolor = LightBlue2, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.5, color = darkslategray]
b

subgraph cluster0 {
node [fillcolor = PowderBlue, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.5, color = darkslategray]
b [label = 'Libraries']
ba [label = 'rgdal']
bb [label = 'raster']
bc [label = 'terra']
bd [label = 'RColorBrewer']
be [label = 'pals']
bf [label = 'colorspace']
bg [label = 'RStoolbox']
bh [label = 'graphics']
bi [label = 'Hmisc']
}

node [fillcolor = green]
c d

edge [color = grey, arrowhead = none]
a -> {b c d}
b -> {ba}
ba -> {bb}
bb -> {bc}
bc -> {bd}
bd -> {be}
be -> {bf}
bf -> {bg}
bg -> {bh}
bh -> {bi}
c -> {k l m}
d -> {n o p}
}")

