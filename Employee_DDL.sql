CREATE TABLE "SNOW_PRACTS"."PRACTICE_SCH"."Emp" ( EmployeeID NUMBER(38, 0) , FirstName VARCHAR , LastName VARCHAR , Email VARCHAR , PhoneNumber NUMBER(38, 0) , Department VARCHAR , Designation VARCHAR , JoinDate DATE , Salary NUMBER(38, 0) , Location VARCHAR ); 

CREATE TEMP FILE FORMAT "SNOW_PRACTS"."PRACTICE_SCH"."temp_file_format_2025-07-15T11:58:23.597Z"
	TYPE=CSV
    SKIP_HEADER=1
    FIELD_DELIMITER=','
    TRIM_SPACE=TRUE
    FIELD_OPTIONALLY_ENCLOSED_BY='"'
    REPLACE_INVALID_CHARACTERS=TRUE
    DATE_FORMAT=AUTO
    TIME_FORMAT=AUTO
    TIMESTAMP_FORMAT=AUTO; 

COPY INTO "SNOW_PRACTS"."PRACTICE_SCH"."Emp" 
FROM (SELECT $1, $2, $3, $4, $5, $6, $7, $8, $9, $10
	FROM '@"SNOW_PRACTS"."PRACTICE_SCH"."__snowflake_temp_import_files__"') 
FILES = ('2025-07-15T11:57:54.186Z/Employee.csv') 
FILE_FORMAT = '"SNOW_PRACTS"."PRACTICE_SCH"."temp_file_format_2025-07-15T11:58:23.597Z"' 
ON_ERROR=ABORT_STATEMENT 

-- For more details, see: https://docs.snowflake.com/en/sql-reference/sql/copy-into-table
