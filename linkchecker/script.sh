#!/bin/bash
# You need to set the following environment variables in your environment for this script to work
# RECURSIVE_DEPTH
# SEARCH_URL
NOW=$( date '+%F_%H:%M:%S' )
OUTPUT_FILENAME=linkchecker_result_${NOW}.csv
BUCKET_NAME=linkchecker-output

touch ${OUTPUT_FILENAME}
chmod 777 ${OUTPUT_FILENAME}
linkchecker ${SEARCH_URL} -r ${RECURSIVE_DEPTH} --no-robots --file-output csv/${OUTPUT_FILENAME}
aws s3api put-object --bucket ${BUCKET_NAME} --key output/${OUTPUT_FILENAME} --body ${OUTPUT_FILENAME}
