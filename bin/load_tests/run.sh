#!/bin/bash

TARGET_HOST=http://10.5.10.10:4000
ACCESS_KEY=
SECRET_KEY=
# Usage: Try run with ./run.sh static 10 100 (10 parallel clients, 100 requests per client)


SCRIPT_NAME="$1"
NUM_CONCURRENT="$2"
REQS_PER_CONCURRENT="$3"
let "NUM_TOTAL_REQUESTS = $NUM_CONCURRENT * $REQS_PER_CONCURRENT"

source "./scripts/$SCRIPT_NAME.sh"
