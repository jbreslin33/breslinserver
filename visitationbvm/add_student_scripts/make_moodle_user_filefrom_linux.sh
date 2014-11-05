echo copy student linux file to a temp file
cp add_viso.txt add_school_to_moodle.txt

echo replace blank space between first and last name with : delimeter
sed -i 's/ /:/g' add_school_to_moodle.txt

echo get rid of first two lines k and jbreslin
sed 1d add_school_to_moodle.txt > add_moodle.txt
sed 1d add_moodle.txt > add_school_to_moodle.txt
cp add_school_to_moodle.txt add_moodle.txt
sed -i '1s/^/username:password:email:fakea:firstname:lastname:fakeb:fakec\n/' add_moodle.txt 
