cut -d : -f 1,2,5 add_viso.txt > add_school_to_google_A.txt
sed -i 's/ /:/g' add_school_to_google_A.txt
sed -i 's/:/,/g' add_school_to_google_A.txt
cut -d , -f 3,4,1,2 add_school_to_google_A.txt > add_school_to_google_B.txt
sed '/,/s//@visitationbvm.com,google/' add_school_to_google_B.txt > add_school_to_google_C.txt
sed -i '/New/d' add_school_to_google_C.txt
sed -i '1s/^/Email Address,Password,First Name, Last Name\n/' add_school_to_google_B.txt 
split -l 100 -d add_school_to_google_C.txt google
