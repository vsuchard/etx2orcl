--------------------------------------------------------
--  DDL for Table T_ACCOUNT_SUMMARY
--------------------------------------------------------

CREATE TABLE "T_ACCOUNT_SUMMARY" 
   (	"TRANTIME" DATE, 
	"TRANTYPE" VARCHAR2(48 BYTE), 
	"TRANDESC" VARCHAR2(128 BYTE), 
	"CREDIT" NUMBER(8,2), 
	"DEBET" NUMBER(8,2), 
	"BALANCE" NUMBER(12,2), 
	"CURRENCY" VARCHAR2(3 BYTE)
   ) ;
