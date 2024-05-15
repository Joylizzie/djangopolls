
--create user, password with be created manually and stored in environment
drop user  if exists hellow;
CREATE ROLE hellow SUPERUSER LOGIN PASSWORD 'streamline';
GRANT ALL PRIVILEGES ON DATABASE mysite to hellow; 
-- GRANT CONNECT ON DATABASE mysite TO hellow;
