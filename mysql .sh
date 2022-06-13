#!/bin/bash
# call mysql on a remote server to execute the given command 

# show usage and exit
usage() {
  echo "$0 server sql-command"  1>&2
    exit 1
}

# check number of arguments
if [ $# -lt 2 ]
then
  usage
fi

# get server name and sql command
server="$1"
sql="$2"

# copy command to a temporary file
tmpsql="/tmp/sql$$"
echo "$sql" > $tmpsql

# copy command file to server
scp $tmpsql $server:$tmpsql
# run command remotely with removing command file afterwards
ssh $server "mysql -uroot -pPASSWORD < $tmpsql;rm $tmpsql"
# remove local copy of command file
rm $tmpsql