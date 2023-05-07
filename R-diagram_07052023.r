#----------------------------->
grViz("
digraph dot {

graph [layout = dot,
       rankdir = LR]

node [shape = circle,
      style = filled,
      color = grey,
      label = '']

node [fillcolor = lightsteelblue1]
    a [label = 'Project Data', color = coral3]

node [fillcolor = mintcream, shape = box, group = true, color = darkolivegreen, fixedsize = true, width = 2.0]
    b [label = 'Landsat 8-9 OLI/TIRS', fillcolor = palegreen];
    c [label = 'Google Maps'];
    d [label = 'Google Earth'];
    e [label = 'GEBCO grid'];
    f [label = 'SRTM DEM'];
    g [label = 'DCW'];
    h [label = 'Metadata'];
    
node [fillcolor = mistyrose, shape = box, color = darkgoldenrod, fixedsize = true, width = 2.5]
    i [label = 'CRS WGS-84 (EPSG:4326)'];
    j [label = 'UTM Projection Zone 32'];
    k [label = 'WRS_PATH: 193'];
    l [label = 'WRS_ROW: 36'];
    
node [fillcolor = lavender, shape = rectangle, color = darkorange3, fixedsize = true, width = 2.5]
    m [label = 'LC81930362014001LGN01'];
    n [label = 'LC81930362015004LGN01'];
    o [label = 'LC81930362016007LGN02'];
    p [label = 'LC81930362017025LGN02'];
    q [label = 'LC81930362018028LGN00'];
    r [label = 'LC81930362019015LGN00'];
    s [label = 'LC81930362020002LGN00'];
    t [label = 'LC81930362021004LGN00'];
    u [label = 'LC91930362022015LGN00'];
    
node [fillcolor = aliceblue, shape = box, color = darkorange3, fixedsize = true, width = 1.7]
    v [label = 'd.mon wx0'];
    w [label = 'group: L08/09'];
    x [label = 'subgroup: VIS'];
    
node [fillcolor = lightyellow1, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    y [label = 'g.region'];
    z [label = 'd.raster'];
    
node [fillcolor = honeydew, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    aa [label = 'i.maxlik'];
    bb [label = 'd.legend'];
    
#node [fillcolor = seashell1, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
 #   cc [label = '__init__.py'];
 #   dd [label = 'regressors.py'];
 #   ee [label = 'scan.py'];
 #   ff [label = 'segment.py'];
 #   gg [label = 'tile.py'];
 #   hh [label = 'types.py'];
    
node [fillcolor = bisque, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    ii [label = 'g.region'];
    jj [label = 'i.group'];
    kk [label = 'r.support'];

node [fillcolor = ghostwhite, shape = box, color = darkorange3, fixedsize = true, width = 2.0]
    ll [label = 'RGB color composites'];
    mm [label = 'Max-Like maps'];
    nn [label = 'Rejection probability'];

node [fillcolor = cornsilk, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    oo [label = 'i.cluster k-means'];
    pp [label = 'signatures'];

#node [fillcolor = cornsilk, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
 #   qq [label = 'display_tiles.py'];
 #  rr [label = 'main_analyse.py'];
 #   ss [label = 'main_auto.py'];
 #   tt [label = 'main_convert.py'];
 #   uu [label = 'main_export.py'];
 #   vv [label = 'main_timestamp.py'];
 #   ww [label = 'main_vectorize.py'];
 #   xx [label = 'open_mat.py'];
 #   yy [label = 'read_mseed.py'];
 #   zz [label = 'segtest.py'];
 #   aaa [label = 'test_annot.py'];

edge [color = grey, arrowhead = none, arrowtail = none]
    a -> {b c d e f g h}
    b -> {m n o p q r s t u}
    h -> {i j k l}
    u -> {v w x}
    t -> {y z}
#    p -> {cc dd ee ff gg hh} [constraint=false]
    q -> {aa bb}
    n -> {ii jj kk}
    kk -> {ll mm nn}
    o -> {oo pp}
#    m -> {qq rr ss tt uu vv ww xx yy zz aaa} [constraint=false]

edge [color = grey, arrowhead = none, arrowtail = none]
}")
