#this is the file for runnig generate plugin 
#! /usr/bin/ksh
echo "Please enter NDM name , which you want to run Generate Plugin script"
read ndm
my_array=( `ls -d */ /basefolder/$ndm ` )
my_array_length=${#my_array[@]}
if 
b=$my_array_length
a=0
#echo $my_array_length
for element in "${my_array[@]}"
do
   cd /basefolder/$ndm/"$element"deployment
   pwd
   ./generate_plugin.ksh
   for i in ${!my_array[@]} ; do  
    if [[ ${my_array[$i]} = $element ]]; then 
      my_array[$i]=''
      ((a+=1)) 
      print " $a of $b folders finished , " # this command is for Korn Shell
      echo  " $a of $b folders finished , " # This is for Bourne again shell
    fi
done
done
