--------------------------------------------------------
--  DDL for Index I_ACCOUNT_SUMMARY_UNIQ
--------------------------------------------------------

CREATE UNIQUE INDEX "I_ACCOUNT_SUMMARY_UNIQ" ON "T_ACCOUNT_SUMMARY" ("TRANTIME", "TRANTYPE", "TRANDESC", "CREDIT", "DEBET", "BALANCE", "CURRENCY") ;
