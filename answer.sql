-- Week 8 Assignment: MySQL Database Backup and Restore

-- =====================================================
-- Question 1: Creating a Complete Database Backup
-- =====================================================
-- Run this in the system terminal (not inside the MySQL client).
mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- mysqldump is the MySQL utility that exports a database as SQL statements.
-- -u root    : connect as the root user.
-- -p         : prompt for the password, so it is not typed in the command.
-- sales      : the database to back up.
-- >          : sends the output into the file sales_backup.sql.
-- The file holds the CREATE TABLE and INSERT statements needed to rebuild
-- the sales database (structure and data).
-- Regular backups matter because they protect against hardware failure,
-- accidental deletes, bad updates and attacks, and give a restore point
-- before any major change.

-- =====================================================
-- Question 2: Backing Up All Databases
-- =====================================================
-- Run this in the system terminal (not inside the MySQL client).
mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- --all-databases : exports every database on the server, not just sales.
-- -u root         : connect as the root user.
-- -p              : prompt for the password.
-- >               : sends the output into all_databases_backup.sql.
-- Backing up all databases before a migration matters because the new server
-- must receive everything: every database, its tables and its data. If one
-- database is missed, it is lost or the applications using it break after the
-- move. The full backup also gives a rollback point if the migration fails.
