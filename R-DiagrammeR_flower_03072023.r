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

node [fillcolor = '#d8e698', shape = square, fontname = Helvetica, fontcolor = black, shape = rectangle, fixedsize = true, width = 2.0, color = darkslategray]
Y [label = 'DEM topography']

node [fillcolor = '#d8e698', shape = square, fontname = Helvetica, fontcolor = black, shape = rectangle, fixedsize = true, width = 2.0, color = darkslategray]
X [label = 'Remote sensing \ndata (2015-2023)']

node [fillcolor = '#d8e698', shape = square, fontname = Helvetica, fontcolor = black, shape = rectangle, fixedsize = true, width = 2.0, color = darkslategray]
Z [label = 'Geologic \nvector layers']

node [fillcolor = '#f8e58c', shape = circle, fontname = Helvetica, fontcolor = darkslategray, fixedsize = true, width = 1.5, color = darkslategray]
a [label = 'GRASS GIS \nGMT \nQGIS']

node [fillcolor = LightSalmon, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 1.5, color = darkslategray]
b

subgraph cluster0 {
node [fillcolor = Bisque, shape = egg, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
b [label = 'Segmentation', fillcolor = '#a059a0', fontcolor = white]
ba [label = 'i.segment module', fillcolor = '#ce6693']
bb [label = 'Defining segments', fillcolor = '#eb7f86']
bc [label = 'Threshold algorithm', fillcolor = '#f8a07e']
bd [label = 'Parameter estimation', fillcolor = '#fac484']
be [label = 'seeds, minsize', fillcolor = '#f3e79b']
}

node [fillcolor = '#ccffff', shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.0, color = darkslategray]
c
#node [fillcolor = GreenYellow, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 3.5, color = darkslategray]
#cf

subgraph cluster1 {
node [fillcolor = Khaki1, alpha = 0.5, shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 4.2, color = darkslategray]
c [label = 'Classification', fillcolor = '#834ba0', fontcolor = white]
ca [label = 'r.import module: data imporing', fillcolor = '#ad5fad']
cb [label = 'i.group module: data grouping', fillcolor = '#ce78b3']
cc [label = 'i.cluster module: k-means clustering', fillcolor = '#e597b9']
cd [label = 'i.maxlik module: maximum-likelihood', fillcolor = '#f2b9c4']
ce [label = 'd.rast, d.legend modules: mapping', fillcolor = '#f9ddda']
}

node [fillcolor = '#D1F761', shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 2.5, color = darkslategray]
d
subgraph cluster2 {
node [fillcolor = '#E9FAB6', shape = square, fontname = Helvetica, fontcolor = darkslategray, shape = rectangle, fixedsize = true, width = 3.5, color = darkslategray]
d [label = 'Accuracy assessment', fillcolor = '#f16d7a', fontcolor = white]
da [label = 'r.kappa module', fillcolor = '#fa8a76']
db [label = 'Error matrix of classification', fillcolor = '#ffa679']
dc [label = 'Overall, variance and conditional kappa', fillcolor = '#ffc285']
dd [label = 'Categories of classified result layer', fillcolor = '#ffdd9a']
de [label = 'Rejection probability classes', fillcolor = '#fef6b5']
}

edge [color = grey, arrowhead = none]
Y -> {a}
X -> {a}
Z -> {a}
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
