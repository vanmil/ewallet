#!/bin/bash

ab -n $NUM_TOTAL_REQUESTS -c $NUM_CLIENTS $TARGET_HOST/api/admin
