-- over all profit
select sum(profit) from T_CLOSED_POSITIONS;

-- week profit sum
select extract(year from TIMECLOSE) year#, to_number(to_char(timeclose, 'iw')) week#,sum(profit) from T_CLOSED_POSITIONS group by extract(year from TIMECLOSE), to_number(to_char(timeclose, 'iw')) order by 1;

-- month profit sum
select extract(year from TIMECLOSE) year#, extract(month from TIMECLOSE) month#, sum(profit) from T_CLOSED_POSITIONS group by extract(year from TIMECLOSE), extract(month from TIMECLOSE) order by 1;

-- year profit
select extract(year from TIMECLOSE) year#, sum(profit) from T_CLOSED_POSITIONS group by extract(year from TIMECLOSE) order by 1;

-- daily profit sum for last 10 days
select extract(year from TIMECLOSE) year#, extract(month from TIMECLOSE) month#, extract(day from TIMECLOSE) day#, sum(profit), count(*) as pocet, sum(BET#) as lot, round(count(*)/sum(BET#),2) from T_CLOSED_POSITIONS 
      where timeclose > sysdate-10 group by extract(year from TIMECLOSE), extract(month from TIMECLOSE), extract(day from TIMECLOSE) order by 1 asc;

-- profit by product
select product,sum(profit) from V_CLOSED_POSITIONS group by product;
select extract(year from TIMECLOSE) year#, product,sum(profit) from V_CLOSED_POSITIONS group by extract(year from TIMECLOSE), product order by 1,2;
-- profit by product for x last day
select product,sum(profit) from V_CLOSED_POSITIONS  where timeclose > sysdate-28 group by product;

select product,extract(year from TIMECLOSE) year#, extract(month from TIMECLOSE) month#, sum(profit) from V_CLOSED_POSITIONS  where timeclose > sysdate-28 group by product,extract(year from TIMECLOSE), extract(month from TIMECLOSE) order by 1;


select PRODUCT,BETACTION,BETOPEN,BETCLOSE,PROFIT,PROFITBRUTTO,TIMEOPEN,TIMECLOSE, to_number(to_char(timeclose, 'iw')) week# from t_closed_positions order by timeclose desc;


ALTER TABLE T_CLOSED_POSITIONS ADD CONSTRAINT C_PRODUCT CHECK(PRODUCT IS NOT NULL) ;
alter table "VSU"."T_CLOSED_POSITIONS" add constraint C_BETACCTION check(BETACTION is not null) ENABLE;

select * from T_ACCOUNT_SUMMARY where TRANTYPE like '%divi%';
select sum(credit), sum(debet) from T_ACCOUNT_SUMMARY where TRANTYPE like '%divi%';

select currency, sum(credit) from T_ACCOUNT_SUMMARY where TRANTYPE = 'Převést prostředky na účet' group by CURRENCY;

select * from T_ACCOUNT_SUMMARY where TRANTYPE = 'Převést prostředky na účet' ;
