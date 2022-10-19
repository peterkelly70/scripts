for i in $(ls $1)
do
if [ -d "$i" ]
then
   tvname "$i/"
fi 
done


