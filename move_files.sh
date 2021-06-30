#This script move $file_count files from $src to $dest while $count is greater than $threshold value.

src="/path/of/source/"
dest="/path/to/destination/"
threshold=0
file_count=100
cd $src
count=`find $src -name '*.txt' | wc -l`
echo $count
while [ $count -gt $threshold ]
do
        find $src -name '*.xml' | head -n $file_count | xargs -I {} mv {} $dest
        echo "Current file count at $src is - `ls|wc -l` `date`"
done
