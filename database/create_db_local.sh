
set -e
psql --host=localhost -U postgres --dbname=postgres  -a -f database/create_db.sql
psql --host=localhost -U postgres --dbname=mysite  -a -f database/create_db_user.sql
psql --host=localhost -U hellow --dbname=mysite  -a -f database/create_db_schema.sql