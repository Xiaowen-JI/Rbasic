# This script converts a CSV file with headers to XML or JSON, depending on
# the command line argument supplied.
#
# This script will be executed by calling:
#
#    ```
#    Rscript src/lab1.R xml/json <filename>
#    ```
#
# Output of XML and JSON should be printed to stdout.
require("jsonlite")
require("XML")


args=commandArgs(trailingOnly=TRUE)

flag = args[1] #to select  XML or JSON
filename = args[2]

#parse_csv
parse_csv <- function(filename) {
    # Parse a CSV file by separating it into headers and additional data.
    #
    # Args
    # filename: A path to a CSV file.
    # 
    # Returns
    # An R structure containing the headers from the csv file and the data.
   csv_object = read.csv(filename,header = TRUE, sep=",", stringsAsFactors=FALSE)
   return(csv_object)
   }
csv_object=parse_csv(filename)

column_name=names(csv_object)#names csv varialbes

###################################
# Create your other functions here.
###################################

for(i in 1:length(csv_object[,1])){
  for(j in 1:length(column_name)){
   csv_object[i,j]=toString(csv_object[i,j])
  }
}

if(flag=='xml'){
top=newXMLNode("records")

#read each row,when finish all the colomns, go to next row# "for loop" function in R
for(i in 1:length(csv_object[,1])){
  patient=newXMLNode('patient', parent=top)
  for(j in 1:length(column_name)){
    newXMLNode(column_name[j], csv_object[,j][i], parent=patient)
  }
}
print(top, stdout())
}




#json
if(flag=='json'){
csv_object_copy=csv_object
csv_object_copy$patient=csv_object    #XML node;creat parents
csv_object=csv_object_copy[length(csv_object_copy)]
#json <- '{"records": [patient: {}]}'
json <- ''
json['records']=csv_object
writeLines(toJSON(json['records'], pretty=TRUE), stdout())
}









