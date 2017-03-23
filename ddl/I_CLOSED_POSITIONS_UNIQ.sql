--------------------------------------------------------
--  DDL for Index I_CLOSED_POSITIONS_UNIQ
--------------------------------------------------------

CREATE UNIQUE INDEX "I_CLOSED_POSITIONS_UNIQ" ON "T_CLOSED_POSITIONS" ("PRODUCT", "BETACTION", "BET#", "BETOPEN", "BETCLOSE", "PROFITBRUTTO", "PROFIT", "TIMEOPEN", "TIMECLOSE") ;
