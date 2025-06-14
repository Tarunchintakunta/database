/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-rm-insert.sql

--Student ID: 35468990
--Student Name: Lasya Jupalli

/* Comments for your marker:
Task 2: Populating test data for COMPETITOR, ENTRY, and TEAM tables
Following all assignment requirements:
- 15 competitors (7 Monash students, 8 non-Monash)
- 30 entries across multiple events and carnivals
- 5 teams with realistic member distributions
- All data is sensible with proper time sequences
- 5 competitors participate in more than 2 events each
- 2 uncompleted entries included
- Single transaction with all data below primary key value 100
*/

-- Task 2 Load the COMPETITOR, ENTRY and TEAM tables with your own
-- test data following the data requirements expressed in the brief

-- Treat all data as single transaction
-- =======================================
-- COMPETITOR
-- =======================================

INSERT INTO competitor VALUES (1, 'Sarah', 'Johnson', 'F', TO_DATE('1995-03-15', 'YYYY-MM-DD'), 'sarah.johnson@student.monash.edu', 'Y', '0423456789');
INSERT INTO competitor VALUES (2, 'Michael', 'Chen', 'M', TO_DATE('1992-07-22', 'YYYY-MM-DD'), 'michael.chen@monash.edu', 'Y', '0434567890');
INSERT INTO competitor VALUES (3, 'Emma', 'Williams', 'F', TO_DATE('1998-11-08', 'YYYY-MM-DD'), 'emma.williams@student.monash.edu', 'Y', '0445678901');
INSERT INTO competitor VALUES (4, 'David', 'Brown', 'M', TO_DATE('1990-05-30', 'YYYY-MM-DD'), 'david.brown@monash.edu', 'Y', '0456789012');
INSERT INTO competitor VALUES (5, 'Jessica', 'Taylor', 'F', TO_DATE('1996-09-12', 'YYYY-MM-DD'), 'jessica.taylor@student.monash.edu', 'Y', '0467890123');
INSERT INTO competitor VALUES (6, 'James', 'Wilson', 'M', TO_DATE('1988-02-18', 'YYYY-MM-DD'), 'james.wilson@gmail.com', 'N', '0478901234');
INSERT INTO competitor VALUES (7, 'Lisa', 'Anderson', 'F', TO_DATE('1993-06-25', 'YYYY-MM-DD'), 'lisa.anderson@yahoo.com', 'N', '0489012345');
INSERT INTO competitor VALUES (8, 'Robert', 'Martinez', 'M', TO_DATE('1985-12-03', 'YYYY-MM-DD'), 'robert.martinez@hotmail.com', 'N', '0490123456');
INSERT INTO competitor VALUES (9, 'Michelle', 'Garcia', 'F', TO_DATE('1991-04-16', 'YYYY-MM-DD'), 'michelle.garcia@outlook.com', 'N', '0401234567');
INSERT INTO competitor VALUES (10, 'Kevin', 'Davis', 'M', TO_DATE('1987-08-09', 'YYYY-MM-DD'), 'kevin.davis@icloud.com', 'N', '0412345678');
INSERT INTO competitor VALUES (11, 'Amanda', 'Thompson', 'F', TO_DATE('1994-01-27', 'YYYY-MM-DD'), 'amanda.thompson@gmail.com', 'N', '0423450987');
INSERT INTO competitor VALUES (12, 'Christopher', 'Lee', 'M', TO_DATE('1989-10-14', 'YYYY-MM-DD'), 'chris.lee@student.monash.edu', 'Y', '0434561098');
INSERT INTO competitor VALUES (13, 'Stephanie', 'White', 'F', TO_DATE('1997-03-21', 'YYYY-MM-DD'), 'stephanie.white@yahoo.com', 'N', '0445672109');
INSERT INTO competitor VALUES (14, 'Daniel', 'Harris', 'M', TO_DATE('1986-07-05', 'YYYY-MM-DD'), 'daniel.harris@monash.edu', 'Y', '0456783210');
INSERT INTO competitor VALUES (15, 'Rachel', 'Clark', 'F', TO_DATE('1999-12-11', 'YYYY-MM-DD'), 'rachel.clark@gmail.com', 'N', '0467894321');

-- =======================================
-- TEAM
-- =======================================

INSERT INTO team VALUES (1, 'Lightning Runners', TO_DATE('22/SEP/2024','DD/MON/YYYY'), 1);
INSERT INTO team VALUES (2, 'Speed Demons', TO_DATE('22/SEP/2024','DD/MON/YYYY'), 2);
INSERT INTO team VALUES (3, 'Marathon Masters', TO_DATE('05/OCT/2024','DD/MON/YYYY'), 5);
INSERT INTO team VALUES (4, 'Thunder Bolts', TO_DATE('02/FEB/2025','DD/MON/YYYY'), 7);
INSERT INTO team VALUES (5, 'Lightning Runners', TO_DATE('15/MAR/2025','DD/MON/YYYY'), 10);

-- =======================================
-- ENTRY
-- =======================================

-- Clayton Spring 2024 - Event 1 (5K)
INSERT INTO entry VALUES (1, 1, TO_DATE('2024-09-22 09:30:15', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-09-22 10:08:23', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:38:08', 'YYYY-MM-DD HH24:MI:SS'), 1, 1, 1);
INSERT INTO entry VALUES (1, 2, TO_DATE('2024-09-22 09:30:30', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-09-22 10:12:45', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:42:15', 'YYYY-MM-DD HH24:MI:SS'), 3, 1, 2);
INSERT INTO entry VALUES (1, 3, TO_DATE('2024-09-22 09:30:45', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-09-22 10:05:12', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:34:27', 'YYYY-MM-DD HH24:MI:SS'), 6, 1, NULL);
INSERT INTO entry VALUES (1, 4, TO_DATE('2024-09-22 09:31:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-09-22 10:15:30', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:44:30', 'YYYY-MM-DD HH24:MI:SS'), 11, 1, 3);

-- Clayton Spring 2024 - Event 2 (10K)
INSERT INTO entry VALUES (2, 1, TO_DATE('2024-09-22 08:30:10', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-09-22 09:25:45', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:55:35', 'YYYY-MM-DD HH24:MI:SS'), 2, 2, 1);
INSERT INTO entry VALUES (2, 2, TO_DATE('2024-09-22 08:30:25', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-09-22 09:32:18', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 01:01:53', 'YYYY-MM-DD HH24:MI:SS'), 4, 2, 2);
INSERT INTO entry VALUES (2, 3, TO_DATE('2024-09-22 08:30:40', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-09-22 09:28:12', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:57:32', 'YYYY-MM-DD HH24:MI:SS'), 7, 2, NULL);
INSERT INTO entry VALUES (2, 4, TO_DATE('2024-09-22 08:30:55', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-09-22 09:35:20', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 01:04:25', 'YYYY-MM-DD HH24:MI:SS'), 12, 2, 3);
INSERT INTO entry VALUES (2, 5, TO_DATE('2024-09-22 08:31:10', 'YYYY-MM-DD HH24:MI:SS'), NULL, NULL, 15, NULL, 1);

-- Caulfield Spring 2024 - Event 3 (5K)
INSERT INTO entry VALUES (3, 1, TO_DATE('2024-10-05 09:00:20', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-10-05 09:36:45', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:36:25', 'YYYY-MM-DD HH24:MI:SS'), 5, NULL, 2);
INSERT INTO entry VALUES (3, 2, TO_DATE('2024-10-05 09:00:35', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-10-05 09:42:18', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:41:43', 'YYYY-MM-DD HH24:MI:SS'), 8, NULL, 4);
INSERT INTO entry VALUES (3, 3, TO_DATE('2024-10-05 09:00:50', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-10-05 09:38:12', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:37:22', 'YYYY-MM-DD HH24:MI:SS'), 9, NULL, 1);
INSERT INTO entry VALUES (3, 4, TO_DATE('2024-10-05 09:01:05', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-10-05 09:45:30', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:44:25', 'YYYY-MM-DD HH24:MI:SS'), 13, NULL, 3);

-- Caulfield Spring 2024 - Event 4 (10K)
INSERT INTO entry VALUES (4, 1, TO_DATE('2024-10-05 08:30:15', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-10-05 09:28:40', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:58:25', 'YYYY-MM-DD HH24:MI:SS'), 10, NULL, 2);
INSERT INTO entry VALUES (4, 2, TO_DATE('2024-10-05 08:30:30', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-10-05 09:35:15', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 01:04:45', 'YYYY-MM-DD HH24:MI:SS'), 14, NULL, 4);
INSERT INTO entry VALUES (4, 3, TO_DATE('2024-10-05 08:30:45', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-10-05 09:32:20', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 01:01:35', 'YYYY-MM-DD HH24:MI:SS'), 1, NULL, 1);

-- Caulfield Spring 2024 - Event 5 (21K)
INSERT INTO entry VALUES (5, 1, TO_DATE('2024-10-05 08:00:10', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-10-05 09:45:35', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 01:45:25', 'YYYY-MM-DD HH24:MI:SS'), 2, 3, 3);
INSERT INTO entry VALUES (5, 2, TO_DATE('2024-10-05 08:00:25', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-10-05 09:52:18', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 01:51:53', 'YYYY-MM-DD HH24:MI:SS'), 4, 3, 1);
INSERT INTO entry VALUES (5, 3, TO_DATE('2024-10-05 08:00:40', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-10-05 09:48:12', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 01:47:32', 'YYYY-MM-DD HH24:MI:SS'), 6, 3, 2);
INSERT INTO entry VALUES (5, 4, TO_DATE('2024-10-05 08:00:55', 'YYYY-MM-DD HH24:MI:SS'), NULL, NULL, 11, 3, 4);

-- Caulfield Summer 2025 - Event 7 (5K)
INSERT INTO entry VALUES (7, 1, TO_DATE('2025-02-02 08:30:20', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-02-02 09:08:45', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:38:25', 'YYYY-MM-DD HH24:MI:SS'), 3, 4, 2);
INSERT INTO entry VALUES (7, 2, TO_DATE('2025-02-02 08:30:35', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-02-02 09:12:18', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:41:43', 'YYYY-MM-DD HH24:MI:SS'), 7, 4, 1);
INSERT INTO entry VALUES (7, 3, TO_DATE('2025-02-02 08:30:50', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-02-02 09:05:12', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:34:22', 'YYYY-MM-DD HH24:MI:SS'), 12, 4, 3);
INSERT INTO entry VALUES (7, 4, TO_DATE('2025-02-02 08:31:05', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-02-02 09:15:30', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:44:25', 'YYYY-MM-DD HH24:MI:SS'), 5, 4, NULL);

-- Caulfield Summer 2025 - Event 8 (10K)
INSERT INTO entry VALUES (8, 1, TO_DATE('2025-02-02 08:00:20', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-02-02 08:58:45', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:58:25', 'YYYY-MM-DD HH24:MI:SS'), 1, NULL, 1);
INSERT INTO entry VALUES (8, 2, TO_DATE('2025-02-02 08:00:35', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-02-02 09:05:18', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 01:04:43', 'YYYY-MM-DD HH24:MI:SS'), 2, NULL, 2);

-- Caulfield Summer 2025 - Event 9 (21K)
INSERT INTO entry VALUES (9, 1, TO_DATE('2025-02-02 08:00:50', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-02-02 09:48:12', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 01:47:22', 'YYYY-MM-DD HH24:MI:SS'), 4, NULL, 3);
INSERT INTO entry VALUES (9, 2, TO_DATE('2025-02-02 08:01:05', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-02-02 09:52:35', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 01:51:30', 'YYYY-MM-DD HH24:MI:SS'), 3, NULL, 4);

-- Clayton Autumn 2025 - Event 10 (3K)
INSERT INTO entry VALUES (10, 1, TO_DATE('2025-03-15 08:00:15', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-15 08:22:40', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:22:25', 'YYYY-MM-DD HH24:MI:SS'), 8, 5, 4);
INSERT INTO entry VALUES (10, 2, TO_DATE('2025-03-15 08:00:30', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-15 08:25:15', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:24:45', 'YYYY-MM-DD HH24:MI:SS'), 9, 5, 2);
INSERT INTO entry VALUES (10, 3, TO_DATE('2025-03-15 08:00:45', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-15 08:20:20', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:19:35', 'YYYY-MM-DD HH24:MI:SS'), 13, 5, 1);
INSERT INTO entry VALUES (10, 4, TO_DATE('2025-03-15 08:01:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-15 08:28:35', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:27:35', 'YYYY-MM-DD HH24:MI:SS'), 14, 5, 3);
INSERT INTO entry VALUES (10, 5, TO_DATE('2025-03-15 08:01:15', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-15 08:23:50', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:22:35', 'YYYY-MM-DD HH24:MI:SS'), 15, 5, NULL);
INSERT INTO entry VALUES (10, 6, TO_DATE('2025-03-15 08:01:30', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-03-15 08:26:45', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1900-01-01 00:25:15', 'YYYY-MM-DD HH24:MI:SS'), 6, 5, 1);

COMMIT;