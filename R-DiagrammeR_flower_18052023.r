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
      
node [fillcolor = '#00a1e9', shape = square, fontname = Helvetica, fontcolor = white, shape = rectangle, fixedsize = true, width = 4.0, color = darkslategray]
X [label = 'Topographic GEBCO/SRTM grid']
      
node [fillcolor = '#e4007f', shape = square, fontname = Helvetica, fontcolor = white, shape = rectangle, fixedsize = true, width = 4.0, color = darkslategray]
Y [label = 'Landsat 8-9 satellite images (2013-2022)']

node [fillcolor = '#ffdc00', shape = circle, fontname = Helvetica, fontcolor = darkslategray, fixedsize = true, width = 1.5, color = darkslategray]
a [label = 'Remote \nSensing \nData']

node [fillcolor = LightSalmon, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.5, color = darkslategray]
b

subgraph cluster0 {
node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
b [label = 'GMT modules', fillcolor = '#00bcd4', fontcolor = white]
ba [label = 'pscoast, psxy', fillcolor = '#26c6da']
bb [label = 'grdimage, makecpt', fillcolor = '#4dd0e1']
bc [label = 'grdcontour', fillcolor = '#80deea']
bd [label = 'psclip, grdcut', fillcolor = '#b2ebf2']
be [label = 'psscale, psbasemap', fillcolor = '#e0f7fa']
}

node [fillcolor = '#ccffff', shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.0, color = darkslategray]
c
#node [fillcolor = GreenYellow, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 3.5, color = darkslategray]
#cf

subgraph cluster1 {
node [fillcolor = Khaki1, alpha = 0.5, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 4.2, color = darkslategray]
c [label = 'R packages', fillcolor = '#ff00ff', fontcolor = white]
ca [label = 'Color composites', fillcolor = '#ff33ff']
cb [label = 'Normalized Difference Vegetation Index (NDVI)', fillcolor = '#ff66ff']
cc [label = 'Soil Adjusted Vegetation Index (SAVI)', fillcolor = '#ff99ff']
cd [label = 'Enhanced Vegetation Index (EVI)', fillcolor = '#ffccff']
ce [label = 'Classification: k-means clustering', fillcolor = '#f3e5f5']
}

node [fillcolor = '#D1F761', shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.5, color = darkslategray]
d
subgraph cluster2 {
node [fillcolor = '#E9FAB6', shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
d [label = 'Python libraries', fillcolor = '#9c27b0', fontcolor = white]
da [label = 'Kendall correlation', fillcolor = '#ab47bc']
db [label = 'Pearson correlation', fillcolor = '#ba68c8']
dc [label = 'NumPy, Pandas, OS', fillcolor = '#ce93d8']
dd [label = 'Matplotlib, Seaborn', fillcolor = '#e1bee7']
de [label = 'Correlation matrix', fillcolor = '#f3e5f5']
}

edge [color = grey, arrowhead = none]
X -> {a}
Y -> {a}
a -> {b c d}
b -> {ba}
ba -> {bb}
bb -> {bc}
bc -> {bd}
bd -> {be}
c -> {ca}
ca -> {cb}
cb -> {cc}
cc -> {cd}
cd -> {ce}
d -> {da}
da -> {db}
db -> {dc}
dc -> {dd}
dd -> {de}
}")
