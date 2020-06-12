extract_name(){
line=$1
echo $line >&2
name1=`echo $line| awk -F \' '{print $2}'`
echo $name1 >&2
name2= $(echo $line| awk -F \" '{print $2}')
echo $name2 >&2
if [ "$name1" = "" ]; then
	echo "$name2"
else
	echo "$name1"
fi
}

line=" - job_name: 'example' "
name=$(extract_name "$line")
echo "name is "$name
