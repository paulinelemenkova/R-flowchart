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
    a [label = 'seismo-0.1.0-alpha', color = coral3]

node [fillcolor = mintcream, shape = box, group = true, color = darkolivegreen, fixedsize = true, width = 2.0]
    b [label = 'seismostorm', fillcolor = palegreen];
    c [label = 'docker-compose.yml'];
    d [label = 'Dockerfile'];
    e [label = 'LICENSE.txt'];
    f [label = 'readme_docker.md'];
    g [label = 'requirements.txt'];
    h [label = 'docs'];
    
node [fillcolor = mistyrose, shape = box, color = darkgoldenrod, fixedsize = true, width = 2.5]
    i [label = 'pipeline-paper.puml'];
    j [label = 'pipeline.puml'];
    k [label = 'pipeline2.puml'];
    l [label = 'pipeline3.puml'];
    
node [fillcolor = lavender, shape = rectangle, color = darkorange3, fixedsize = true, width = 2.5]
    m [label = 'archive'];
    n [label = 'CM_client'];
    o [label = 'DS_import'];
    p [label = 'Models'];
    q [label = 'Obs_helpers'];
    r [label = 'readme.MD'];
    s [label = 'seismostorm.py'];
    t [label = 'TileProcessor'];
    u [label = 'utils'];
    
node [fillcolor = aliceblue, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    v [label = '__init__.py'];
    w [label = 'log_utils.py'];
    x [label = 'parameters.py'];
    
node [fillcolor = lightyellow1, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    y [label = '__init__.py'];
    z [label = 'gal_processor.py'];
    
node [fillcolor = honeydew, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    aa [label = '__init__.py'];
    bb [label = 'mseed_exporter.py'];
    
node [fillcolor = seashell1, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    cc [label = '__init__.py'];
    dd [label = 'regressors.py'];
    ee [label = 'scan.py'];
    ff [label = 'segment.py'];
    gg [label = 'tile.py'];
    hh [label = 'types.py'];
    
node [fillcolor = bisque, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    ii [label = '__init__.py'];
    jj [label = 'client.py'];
    kk [label = 'utils'];

node [fillcolor = ghostwhite, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    ll [label = 'add_annotations.py'];
    mm [label = 'get_terms.py'];
    nn [label = 'import_tiles.py'];

node [fillcolor = cornsilk, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    oo [label = 'add_annotations.py'];
    pp [label = 'ds_import.py'];

node [fillcolor = cornsilk, shape = box, color = darkorange3, fixedsize = true, width = 1.5]
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

edge [color = grey, arrowhead = none, arrowtail = none]
    a -> {b c d e f g h}
    b -> {m n o p q r s t u}
    h -> {i j k l}
    u -> {v w x}
    t -> {y z}
    p -> {cc dd ee ff gg hh}
    q -> {aa bb}
    n -> {ii jj kk}
    kk -> {ll mm nn}
    o -> {oo pp}
    m -> {qq rr ss tt uu vv ww xx yy zz aaa}

edge [color = grey, arrowhead = none, arrowtail = none]
}")
