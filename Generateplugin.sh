#this is the file for runnig generate plugin 
#! /usr/bin/ksh

my_array=( `ls` )
my_array_length=${#my_array[@]}
b=$my_array_length
a=0
echo $my_array_length


for element in "${my_array[@]}"
do
   cd /amex/jg02/"$element"deployment
   pwd
   ./generate_plugin.ksh
   
   for i in ${!my_array[@]} ; do  
    if [[ ${my_array[$i]} = $element ]]; then 
      my_array[$i]=''
      ((a+=1)) 
      print " $a of $b folders finished , "  
      echo  " $a of $b folders finished , "  
    fi
    
done
done
