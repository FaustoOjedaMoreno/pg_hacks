#backup full to databases instance
for datname in $(psql -c "SELECT datname FROM pg_database WHERE datname NOT IN ('template0','template1','postgres') ORDER BY pg_database_size(datname) ASC;" -t); do /usr/local/pgsql/bin/pg_dump -C "${datname}" | gzip -c9 > ${datname}_full.sql.gz; done
#Generate a backup with insert statements of a table
pg_dump --dbname=datname --table=tablename --encoding=encodingname --data-only --column-inserts > file.sql
