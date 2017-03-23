--------------------------------------------------------
--  DDL for Table T_CLOSED_POSITIONS
--------------------------------------------------------

CREATE TABLE "T_CLOSED_POSITIONS" 
   (	"PRODUCT" VARCHAR2(80 BYTE), 
	"BETACTION" VARCHAR2(10 BYTE), 
	"BET#" NUMBER(8,2), 
	"BETOPEN" NUMBER(16,6), 
	"BETCLOSE" NUMBER(16,6), 
	"PROFITBRUTTO" NUMBER(8,2), 
	"PROFIT" NUMBER(8,2), 
	"TIMEOPEN" DATE, 
	"TIMECLOSE" DATE
   ) ;
