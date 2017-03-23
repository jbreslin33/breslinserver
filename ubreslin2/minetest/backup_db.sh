echo
echo ---------------------------------------------
echo UBRESLIN: BACKUP MINETEST 
echo ---------------------------------------------

echo backup db with rsync
rsync -r /home/jbreslin/.minetest/ dotminetest/
