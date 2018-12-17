#!/bin/sh
#
# Parameters:
#         1. ASE password for user
#	  2. IQ password for user 
#	
#	v3 - added select from admin..LLV_PROVISIONING_RETRIES
#	v4 - added product counts from IQ
#            convert memory size from bytes to KB		
#
ase_user=dbs
iq_user=dbs
ase_psw=dbssql
iq_psw=dbssql
lastPeriod=-48
if [ $# = 2 ]; then {         ase_user=$1;         iq_user=$2; }; else  { 	ase_user=dbs; 	iq_user=dbs; }; fi
DBWR_SCRIPT="/backup/.syd/.DBWR.sh"
if [ ! -f ${DBWR_SCRIPT} ]; then     DBWR_SCRIPT="/etc/.syd/.DBWR.sh";     if [ ! -f ${DBWR_SCRIPT} ];     then         echo "Error. DBWR script not found. Aborting";         exit 1;     fi; fi
