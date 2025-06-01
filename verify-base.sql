-- Verify the base tables are created properly
SELECT table_name FROM user_tables 
ORDER BY table_name;

-- Check row counts match expected
SELECT 'CARNIVAL' as table_name, COUNT(*) as rows FROM carnival
UNION ALL
SELECT 'CHARITY', COUNT(*) FROM charity  
UNION ALL
SELECT 'EVENT', COUNT(*) FROM event
UNION ALL
SELECT 'EVENTTYPE', COUNT(*) FROM eventtype;

-- Sample data check
SELECT carn_name, carn_date FROM carnival 
ORDER BY carn_date;