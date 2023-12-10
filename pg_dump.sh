#Generate a backup with insert statements of a table
pg_dump --dbname=datname --table=tablename --encoding=encodingname --data-only --column-inserts > file.sql
