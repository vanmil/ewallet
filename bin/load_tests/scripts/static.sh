#!/bin/bash

ab -r -n $NUM_TOTAL_REQUESTS -c $NUM_CONCURRENT $TARGET_HOST/api/admin
