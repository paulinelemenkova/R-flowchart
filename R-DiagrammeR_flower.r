# https://rich-iannone.github.io/DiagrammeR/graphviz_and_mermaid.html

#----------------- example of neato layout ------------->
grViz("
digraph neato {

graph [layout = neato]

node [shape = circle,
      style = filled,
      color = grey,
      label = '']

node [fillcolor = red]
a

node [fillcolor = green]
b c d

node [fillcolor = orange]

edge [color = grey]
a -> {b c d}
b -> {e f g h i j}
c -> {k l m n o p}
d -> {q r s t u v}
}")

#----------------- example of twopi layout ------------->
grViz("
digraph twopi {

graph [layout = twopi]

node [shape = circle,
      style = filled,
      color = grey,
      label = '']

node [fillcolor = red]
a

node [fillcolor = green]
b c d

node [fillcolor = orange]

edge [color = grey]
a -> {b c d}
b -> {e f g h i j}
c -> {k l m n o p}
d -> {q r s t u v}
}")

#----------------- example of circo layout ------------->
grViz("
digraph circo {

graph [layout = circo]

node [shape = circle,
      style = filled,
      color = grey,
      label = '']

node [fillcolor = red]
a

node [fillcolor = green]
b c d

node [fillcolor = orange]

edge [color = grey]
a -> {b c d}
b -> {e f g h i j}
c -> {k l m n o p}
d -> {q r s t u v}
}")

#---------- my example ------------->
grViz("
digraph twopi {

graph [layout = twopi, overlap=false]

node [shape = circle,
      style = filled,
      color = grey,
      label = '']

node [fillcolor = mintcream]
    b [label = 'seismostorm', fillcolor = palegreen];
    
node [fillcolor = lavender]
    m [label = 'archive'];
    p [label = 'Models'];
    u [label = 'utils'];

node [fillcolor = cornsilk]
    qq [label = 'display_tiles.py'];
    rr [label = 'main_analyse.py'];
    ss [label = 'main_auto.py'];
    tt [label = 'main_convert.py'];
    uu [label = 'main_export.py'];
    vv [label = 'main_timestamp.py'];
    ww [label = 'main_vectorize.py'];
    xx [label = 'open_mat.py'];
    yy [label = 'read_mseed.py'];
    zz [label = 'segtest.py'];
    aaa [label = 'test_annot.py'];

node [fillcolor = ghostwhite]
    ll [label = 'add_annotations.py'];
    mm [label = 'get_terms.py'];
    nn [label = 'import_tiles.py'];


edge [color = grey, arrowhead = none, arrowtail = none]
    b -> {m p u}
    m -> {qq rr ss tt uu vv ww xx yy zz aaa}
    p -> {cc dd ee ff gg hh}
    u -> {ll mm nn}
#[constraint=false]

edge [color = grey, arrowhead = none, arrowtail = none]
}")

