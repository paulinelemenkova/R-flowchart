digraph boxes_and_circles {
    # a 'graph' statement
    graph [overlap = true, fontsize = 10]
    # several nodes statement
    note = [shape=box,
    fontname = Helvetica]
    A; B; C; D; E; F
    
    node [shape = circle,
        fixedsize = true,
        width = 0.9] //sets as circles
    1; 2; 3; 4; 5; 6; 7; 8
    
    # several edge statements
    A->1 B->2 B->3 B->4 C->A
    1->D E->A 2->4 1->5 1->F
    E->6 4->6 5->7 6->7 3->8
}

#--------------- 1
# A minimal plot
DiagrammeR::grViz("digraph {
  
graph[layout = dot, rankdir = LR]

a
b
c

a -> b -> c
}")

#--------------- 2
DiagrammeR::grViz("digraph {

graph [layout = dot, rankdir = LR]

# define the global styles of the nodes. We can override these in box if we wish
node [shape = rectangle, style = filled, fillcolor = Linen]

data1 [label = 'Dataset 1', shape = folder, fillcolor = Beige]
data2 [label = 'Dataset 2', shape = folder, fillcolor = Beige]
process [label =  'Process \n Data']
statistical [label = 'Statistical \n Analysis']
results [label= 'Results']

# edge definitions with the node IDs
{data1 data2}  -> process -> statistical -> results
}")

#--------------- 3
grViz("
digraph boxes_and_circles {

  # a 'graph' statement
  graph [overlap = true, fontsize = 10]

  # several 'node' statements
  node [shape = box,
        fontname = Helvetica]
  A; B; C; D; E; F

  node [shape = circle,
        fixedsize = true,
        width = 0.9] // sets as circles
  1; 2; 3; 4; 5; 6; 7; 8

  # several 'edge' statements
  A->1 B->2 B->3 B->4 C->A
  1->D E->A 2->4 1->5 1->F
  E->6 4->6 5->7 6->7 3->8
}
")

#--------------------- my diagram 01.02.2023
grViz("
digraph seismostorm {
  # a 'graph' statement
  graph [fontsize = 8]

  # several 'node' statements
  node [shape = box, fontname = Monaco, fontsize = 6]
        
  A; B; C; D; E; F; G
  A [label =  'docker-compose.yml', shape = plaintext]
  B [label =  'Dockerfile', shape = plaintext ]
  C [label = 'seismostorm', shape = ellipse, color=CornflowerBlue size = 10]
  D [label= 'LICENSE.txt', shape = plaintext]
  E [label= 'docs', shape = box, color = Crimson]
  
  F [label= 'requirements.txt', shape = plaintext]
  G [label = 'readme_docker.md', shape = plaintext,
        fixedsize = true,
        width = 0.9]
  # several 'edge' statements
  A B C D E F G
  # several 'nodes' statements
  node [shape = circle,
          fixedsize = true,
          width = 0.9] // sets as circles
    1 [label= 'pipeline-paper.puml', fontsize = 5, shape = rectangle, color = cadetblue3];
    2 [label= 'pipeline.puml', fontsize = 5, shape = rectangle, color = cadetblue3];
    3 [label= 'pipeline2.puml', fontsize = 5, shape = rectangle, color = cadetblue3];
    4 [label= 'pipeline3.puml', fontsize = 5, shape = rectangle, color = cadetblue3];
    
    edge [color = grey, arrowhead = none, arrowtail = none]
    
  # several 'edge' statements
# E->1 E->2 E->3 E->4
 E -> {1 2 3 4}

}
")


#-------------------------->
edge_aes = edge_aes(
  style = "dot",
  color = c("red", "blue"))
A->1 B->2 B->3 B->4 C->A
1->D E->A 2->4 1->5 1->F
E->6 4->6 5->7 6->7 3->8
F G


DiagrammeR("
graph TB
A-->B
 A-->C
 C-->E
 B-->D
 C-->D
 D-->F
 E-->F
")

DiagrammeR("
graph LR
A
B
C
D
E
F
G
A [label =  'docker-compose.yml']
B [label =  'Dockerfile', shape = polygon ]
C [label = 'seismostorm', shape = circle]
D [label= 'LICENSE.txt']
E [label= 'docs', shape = rectangle]

F [label= 'requirements.txt']
G [label = 'readme_docker.md', shape = polygon,
      fixedsize = true,
      width = 0.9]
")


#--------------------------->

library("DiagrammeR")

grViz("
  digraph CFA {
    # Multiple level nodes
    node [shape = ellipse, color=CornflowerBlue]
    a [label = '@@1'];
    b [label = '@@2'];
    c [label = '@@3'];
    d [label = '@@4'];
    {rank = same; b; d}

    # Terminal branch nodes
    node [shape = box, color = Crimson]
    e [label = 'Model 2'];
    f [label = 'Model 4'];
    g [label = 'Model 5'];
    h [label = 'Model 7'];
    i [label = 'Model 8'];
    {rank = same; e; f; g; h; i}

    # Connect nodes with edges and labels
    a -> b [label = 'Condition 1a']
    a -> d [label = 'Condition 1b']
    b -> e [label = 'Condition 2a']
    b -> c [label = 'Condition 2b']
    c -> f [label = 'Condition 3a']
    c -> g [label = 'Condition 3b']
    d -> h [label = 'Conddition 4a']
    d -> i [label = 'Condition 4b']
  }

[1]: 'Split 1'
[2]: paste0('Model 1\\n Split 2')
[3]: paste0('Model 3\\n Split 3')
[4]: paste0('Model 6\\n Split 4')
")


#---------------------------->
grViz("
digraph dot {

graph [layout = dot]

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



A [label =  'docker-compose.yml', shape = plaintext]
B [label = 'seismostorm', shape = ellipse, color=CornflowerBlue size = 10]
C [label =  'Dockerfile', shape = plaintext ]
D [label= 'LICENSE.txt', shape = plaintext]
E [label= 'docs', shape = box, color = Crimson]

F [label= 'requirements.txt', shape = plaintext]
G [label = 'readme_docker.md', shape = plaintext,



#----------------------------->
grViz("
digraph dot {

graph [layout = dot,
       rankdir = LR]

node [shape = circle,
      style = filled,
      color = grey,
      label = '']

node [fillcolor = coral]
    a [label = 'seismo-0.1.0-alpha', color = coral3]

node [fillcolor = darkolivegreen3]
node [shape = box, color = darkolivegreen, fixedsize = true, width = 2.0]
    b [label = 'docker-compose.yml'];
    c [label = 'seismostorm'];
    d [label = 'Dockerfile'];
    e [label = 'LICENSE.txt'];
    f [label = 'docs'];
    g [label = 'requirements.txt'];
    h [label = 'readme_docker.md'];
    
node [fillcolor = darkgoldenrod1]
node [shape = box, color = darkgoldenrod, fixedsize = true, width = 2.0]
    i [label = 'pipeline-paper.puml'];
    j [label = 'pipeline.puml'];
    k [label = 'pipeline2.puml'];
    l [label = 'pipeline3.puml'];
    
node [fillcolor = darkorange]
node [shape = box, color = darkorange3, fixedsize = true, width = 2.5]
    m [label = 'archive'];
    n [label = 'CM_client'];
    o [label = 'DS_import'];
    p [label = 'Models'];
    q [label = 'Obs_helpers'];
    r [label = 'readme.MD'];
    s [label = 'seismostorm.py'];
    t [label = 'TileProcessor'];
    u [label = 'utils'];
    
node [fillcolor = aliceblue]
node [shape = box, color = darkorange3, fixedsize = true, width = 1.5]
    v [label = '__init__.py'];
    w [label = 'log_utils.py'];
    x [label = 'parameters.py'];

edge [color = grey, arrowhead = none, arrowtail = none]
    a -> {b c d e f g h}
    c -> {m n o p q r s t u}
    f -> {i j k l}
    u -> {v w x}
}")
