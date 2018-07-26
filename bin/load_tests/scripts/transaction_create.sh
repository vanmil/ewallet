#!/bin/bash

ab -r -n $NUM_TOTAL_REQUESTS -c $NUM_CONCURRENT -p data/empty.json \
-T application/json \
-H "Accept: application/vnd.omisego.v1+json" \
-H "Authorization: OMGProvider $(echo -n "$ACCESS_KEY:$SECRET_KEY" | base64 | tr -d '\n')" \
$TARGET_HOST/api/admin/tranasction.create
