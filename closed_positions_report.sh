#!/bin/bash
ETXFILE=closed_positions_report
CONNECT=trader/etx2orcl@XE
CONTROLFILE=${ETXFILE}.ctl
DORENAME=Y
DODOS2UNIX=Y
DOSEDCR=Y
VERBOSE=Y

[ ! -d loaded ] && mkdir loaded

[ "$DORENAME" = "Y" ] && rename -v ' ' '_' ${ETXFILE}*.csv
for i in `ls -1tr ${ETXFILE}*.csv 2>/dev/null` ; do
  [ "$VERBOSE"    = "Y" ] && echo In-progress i=$i
  [ "$DODOS2UNIX" = "Y" ] && dos2unix $i
  [ "$DOSEDCR"    = "Y" ] && sed  's/\r/\r /g' -i $i
  $ORACLE_HOME/bin/sqlldr userid=$CONNECT CONTROL=$CONTROLFILE data="$i"  skip=1
  mv $i loaded/
done
exit 0
