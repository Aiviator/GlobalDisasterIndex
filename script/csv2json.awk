# usage example:
#    awk -f csv2json.awk < s_and_p_2011_two.csv
#
BEGIN{
  print "[" 
}
NR>1 && NR<nlines{
  print "[" $1 "," $2 "],"
}
END{
  print "[" $1 "," $2 "]"
  print "]"
}
