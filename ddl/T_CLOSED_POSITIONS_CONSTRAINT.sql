--------------------------------------------------------
--  Constraints for Table T_CLOSED_POSITIONS
--------------------------------------------------------

ALTER TABLE "T_CLOSED_POSITIONS" ADD CONSTRAINT "C_BETACCTION" CHECK (BETACTION is not null) ENABLE;
