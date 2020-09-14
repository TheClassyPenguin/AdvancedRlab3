################################################################################
#
#name = "Salvador Marti Roman & Eleftheria Chatzitheodoridou"
#liuid = "salma742 & elech646"
#
# 732A94 Advanced R Programming
# Computer lab 3
#
#lab_path = "https://raw.githubusercontent.com/STIMALiU/AdvRCourse/master/Labs/Tests/lab3.yml"
#package.skeleton(name="lab3")
#Seminar date: 10 September 13:15 (A1, Zoom)
# Deadline: 15 September 23:59
################################################################################

#########
# 1.1.2 #
#########

#' \code{dijkstra} returns the distance between to nodes for a given path.
#' 
#' @param graph Graph.
#' @param init_node Starting node.
#' @return Array indicating path length to each node.
#' @export
dijkstra <- function(graph, init_node) {
  stopifnot(is.data.frame(graph))
  stopifnot(is.numeric(init_node))
  
  node_names= unique(c(graph$v1, graph$v2))
  
  #Create Q
  Q = cbind(graph$v1,graph$v2, graph$w)
  
  dist = c(rep(Inf,length(node_names))) #distance from init_node to all other nodes
  names(dist) = node_names
  visited = c(rep(FALSE,length(node_names))) #whether a node was visited
  names(visited) = node_names
    
  dist[as.character(init_node)] <- 0  #distance from init_node to itself=0
  
  while(length(Q) > 0){
    
    #Get the node still in Q with the minimum distance
    remaining_nodes = unique(as.vector(Q[,1:2]))
    u = names(which.min(dist[as.character(remaining_nodes)])) 
    
    #Get relevant edges
    connections_to_u = Q[which(Q[,1:2]==u, arr.ind = T)[,1],]
    
    #remove u from Q
    Q = Q[-which(Q[,1:2]==u, arr.ind = T)[,1],]
    
    #Get neighbour nodes
    neighbours = unique(as.vector(connections_to_u[,1:2]))
    
    for(neighbour in neighbours){
      
      #Edge weight, edges are symmetric in this example so we just get the first value
      weight = connections_to_u[which(connections_to_u[,1:2] == neighbour, arr.ind = T)[,1],3][1]
      
      alt = dist[as.character(u)] + weight
      
      if(alt < dist[as.character(neighbour)]){
        dist[as.character(neighbour)] = alt
        visited[as.character(neighbour)] = u
      }
    }
  }
  return(dist)
}
