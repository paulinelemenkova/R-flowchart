#----------------------------->
library(DiagrammeR)
grViz("
digraph dot {

graph [layout = dot, rankdir = TB, nodesep = 0.10, ranksep = .10,]

node [shape = circle,
      style = filled,
      color = grey,
      label = '']

node [fillcolor = LavenderBlush1]
    a [label = 'seismostorm', color = coral3]

node [shape = box, group = true, color = darkolivegreen, fixedsize = true, width = 2.0]
    b [label = 'archive', fillcolor = Thistle1];
    c [label = 'Models', fillcolor = Powderblue];
    
node [fillcolor = Lightblue1, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    d [label = '__init__.py'];
    e [label = 'regressors.py'];
    f [label = 'scan.py'];
    g [label = 'segment.py'];
    h [label = 'tile.py'];
    i [label = 'types.py'];

node [fillcolor = Lavender, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    j [label = 'display_tiles.py'];
    k [label = 'main_analyse.py'];
    l [label = 'main_auto.py'];
    mm [label = 'main_convert.py'];
    nn [label = 'main_export.py'];
    oo [label = 'main_timestamp.py'];
    pp [label = 'main_vectorize.py'];
    qq [label = 'open_mat.py'];
    rr [label = 'read_mseed.py'];
    ss [label = 'segtest.py'];
    tt [label = 'test_annot.py'];

edge [color = grey, arrowhead = none, arrowtail = none]
    a -> {b c}
    b -> j -> k -> l -> mm -> nn -> oo -> pp -> qq -> rr -> ss -> tt
    c -> d -> e -> f -> g -> h -> i

edge [color = grey, arrowhead = none, arrowtail = none]
}")
