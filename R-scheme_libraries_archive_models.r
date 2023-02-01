#----------------------------->
grViz("
digraph dot {

graph [layout = dot, rankdir = TB]

node [shape = circle,
      style = filled,
      color = grey,
      label = '']

node [fillcolor = lightsteelblue1]
    a [label = 'seismostorm', color = coral3]

#node [fillcolor = mintcream, shape = box, group = true, color = darkolivegreen, fixedsize = true, width = 2.0]
 #   b [label = 'archive'];
 #   c [label = 'Models'];
    
node [fillcolor = lavender, shape = rectangle, color = darkorange3, fixedsize = true, width = 2.0]
    m [label = 'archive'];
    n [label = 'CM_client'];
    o [label = 'DS_import'];
    p [label = 'Models'];
    q [label = 'Obs_helpers'];
    r [label = 'readme.MD'];
    s [label = 'seismostorm.py'];
    t [label = 'TileProcessor'];
    u [label = 'utils'];
    
node [fillcolor = seashell1, shape = circle, color = darkorange3, fixedsize = true, width = 1.5]
    d [label = '__init__.py'];
    e [label = 'regressors.py'];
    f [label = 'scan.py'];
    g [label = 'segment.py'];
    h [label = 'tile.py'];
    i [label = 'types.py'];

node [fillcolor = cornsilk, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
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
    a -> {m n o p q r s t u}
    m -> j -> k -> l -> mm -> nn -> oo -> pp -> qq -> rr -> ss -> tt
    p -> d -> e -> f -> g -> h -> i
    

edge [color = grey, arrowhead = none, arrowtail = none]
}")


#---------------------->
# Define some sample data
#data <- list(a=1000, b=800, c=600, d=400)

DiagrammeR::grViz("
digraph graph2 {

graph [layout = dot]

# node definitions with substituted label text
node [shape = rectangle, width = 3, fillcolor = Beige]
    a [label = '@@1']
    b [label = '@@2']
    c [label = '@@3']
    d [label = '@@4']

edge [color = grey, arrowhead = none, arrowtail = none]
a -> b -> c -> d
}

[1]: paste0('Raw Data (n = ', data$a, ')')
[2]: paste0('Remove Errors (n = ', data$b, ')')
[3]: paste0('Identify Potential Customers (n = ', data$c, ')')
[4]: paste0('Select Top Priorities (n = ', data$d, ')')
")
