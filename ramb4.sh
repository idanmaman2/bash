set -m
input=$1
echo $1
size=${#input}
input=$input$size
sum=0
for((var=0;var<${#input};var++));do
    echo $var" "${input:$var:1}
    get=`echo -n ${input:$var:1} |od -An -tuC`
    sum=$(($get + 0+$sum))
    echo "sum: "$sum
done 
echo "final "$((sum%256))
