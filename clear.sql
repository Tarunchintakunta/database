-- Clear all test data and reset for fresh start

-- Delete all data from tables (in correct order due to foreign keys)
DELETE FROM entry;
DELETE FROM team;
DELETE FROM competitor;

-- Reset sequences if they exist (these might not exist, that's okay)
DROP SEQUENCE competitor_seq;
DROP SEQUENCE team_seq;

COMMIT;

-- Verify tables are empty
SELECT 'COMPETITOR' as table_name, COUNT(*) as row_count FROM competitor
UNION ALL
SELECT 'ENTRY', COUNT(*) FROM entry
UNION ALL
SELECT 'TEAM', COUNT(*) FROM team;