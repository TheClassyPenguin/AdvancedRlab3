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
# 1.1.1 #
#########

#' \code{euclidian} returns the lowest common denominator between two numbers.
#' 
#' @param a A number.
#' @param b A number.
#' @return The lowest common denominator of \code{x} and \code{y}.
#' @examples
#' euclidian(1, 1)
#' euclidian(10, 1)
#' @export
euclidian = function(a,b){
  while(b!=0){
    t = b
    b = a %% b
    a = t
  }
  return(a)
}


#########
# 1.1.2 #
#########

#dijkstra = function()