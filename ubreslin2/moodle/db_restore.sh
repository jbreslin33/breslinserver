sudo -u postgres psql -d moodle -f drop_db.sql
sudo -u postgres dropdb moodle
sudo -u postgres pg_restore -C -d postgres moodle.dump
