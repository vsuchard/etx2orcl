#!/bin/bash
ETXFILE=Account_Summary
CONNECT=trader/etx2orcl@XE
CONTROLFILE=${ETXFILE}.ctl

[ ! -d loaded ] && mkdir loaded

rename -v ' ' '_' ${ETXFILE}*.csv
for i in `ls -1tr ${ETXFILE}*.csv` ; do
  #echo i=$i
  dos2unix $i
  sed  's/\r/\r /g' -i $i
  $ORACLE_HOME/bin/sqlldr userid=$CONNECT CONTROL=$CONTROLFILE data="$i"  skip=1
  mv $i loaded/
done
exit 0
