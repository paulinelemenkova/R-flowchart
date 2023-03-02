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

node [color = Tomato, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.5]
a [label = 'Workflow']

node [fillcolor = Orange, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.5, color = darkslategray]
b

subgraph cluster0 {
node [fillcolor = '#F79C612E', shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.5, color = darkslategray]
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

node [fillcolor = Gold, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.5, color = darkslategray]
c
#node [fillcolor = GreenYellow, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 3.5, color = darkslategray]
#cf

subgraph cluster1 {
node [fillcolor = Khaki1, alpha = 0.5, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 3.5, color = darkslategray]
c [label = 'Data Processing']
ca [label = 'Import: list.files']
cb [label = 'Printing the list']
cc [label = 'Create a SpatRaster']
cd [label = 'rast()']
ce [label = 'Check properties']
cf [label = 'Creating Color Composites']
cg [label = 'Bands combinations']
ch [label = 'landsat[[c(5,4,3)]]']
ci [label = 'Visualization: plotRGB']
}

node [fillcolor = '#D1F761', shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.5, color = darkslategray]
d
subgraph cluster2 {
node [fillcolor = '#E9FAB6', shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.0, color = darkslategray]
d [label = 'Clustering']
da [label = 'set.seed(99)']
db [label = 'nSamples = 100']
dc [label = 'nClasses = 10']
dd [label = 'nStarts = 5']
de [label = 'Color palette: pals']
df [label = 'Plotting a map']
dg [label = 'colors <- jet(10)']
dh [label = 'Defining layout']
di [label = 'Adding legend']
}

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
c -> {ca}
ca -> {cb}
cb -> {cc}
cc -> {cd}
cd -> {ce}
ce -> {cf}
cf -> {cg}
cg -> {ch}
ch -> {ci}
d -> {da}
da -> {db}
db -> {dc}
dc -> {dd}
dd -> {de}
de -> {df}
df -> {dg}
dg -> {dh}
dh -> {di}
}")
