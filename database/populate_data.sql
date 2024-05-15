set search_path TO polls;

show search_path;

\COPY polls_question FROM 'database/questionlist.csv' WITH DELIMITER ',' CSV HEADER;