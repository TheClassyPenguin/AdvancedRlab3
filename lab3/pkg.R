################################################################################
#
name = "Salvador Mart? Rom?n & Eleftheria LongSurname"
liuid = "salma742 & "
#
# 732A94 Advanced R Programming
# Computer lab 3
#
lab_path = "https://raw.githubusercontent.com/STIMALiU/AdvRCourse/master/Labs/Tests/lab3.yml"
package.skeleton(name="lab3")
#Seminar date: 10 September 13:15 (A1, Zoom)
# Dealine: 15 September 23:59
################################################################################



#Imports
library(markmyassignment)
set_assignment(lab_path)


#########
# 1.1.1 #
#########

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

dijkstra = function()