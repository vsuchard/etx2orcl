# etx2orcl
Import csv data from ETX Capital trading platform TraderPro into Oracle database

# Prerequisities

## An Oracle database up and running
I use free version of db engine called Oracle Database Express Edition 11g Release 2 (known as Oracle XE).
(http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html)

## Browsing db tool installed 
I use free tool Oracle SQL Developer.
(http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html)

## Bash interpreter instaled
The bash is standard on Unix/Linux platforms, also it is possible use cygwin bash on Windows

# Steps to deploy:

1. create a new schema (owner of db objects) in the database or use someone which is already prepared

        SQL> create user trader identified by ext2orcl;
        SQL> grant connect to trader;
        SQL> grant resource to trader;
        SQL> grant create view to trader;

2. start sqlplus session from ddl directory and connect as the owner

        SQL> connect trader/ext2orcl
        SQL> @010_INSTALL.sql

# Steps to use:

1. configure CONNECT variable in the script closed_positions_report.sh and Account_Summary.sh
2. export "Closed possitions" from TraderPro and save into directory with scripts
3. execute ./closed_positions_report.sh
4. execute report.sql from Oracle Developer
