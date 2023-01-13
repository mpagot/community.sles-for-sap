SELECT 
  DATABASE_NAME,
  MAX(BACKUP_ID) AS BACKUP_ID,
  MAX(UTC_START_TIME) AS TIME
FROM
  "SYS_DATABASES"."M_BACKUP_CATALOG"
WHERE
  ENTRY_TYPE_NAME = 'complete data backup'
GROUP BY
  DATABASE_NAME;