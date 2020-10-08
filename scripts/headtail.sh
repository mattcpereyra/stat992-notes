# echo "script name: $0"
#echo "first argument: $1"
# echo "number of arguments: $#"
#!/bin/bash
set -e # script terminates if any command exits with non-zero status
set -u # terminates if any variable is unset
set -o pipefail # terminates if any comman within a pipe exits unsuccessfully

if [ $# -lt 1 ] || [ ! -f $1 ] || [ ! -r $1 ]
then
  echo "error: no argument, or argument is not a file, or file not readable"
  exit 1 # exit script with error code (1). 0 = successful exit
fi


(head -n 2; tail -n 2) < "$1"
