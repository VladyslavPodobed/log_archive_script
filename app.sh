#!/bin/bash


# requirements:
# script must accept dir to which logs will be saved as an argument
# script must compress the logs with "tar"
# script must save the logs to the new dir
# script must add date n time of when log was archived (e.g.: log_archive_20260101_<hoursminutesseconds>.tar.gz)

function archive_file() {
  path_to_dir="${1}" # this is the 1st argument
  datetime_now=$(date +'%Y%m%d_%H%M%S')
  tar -czf $path_to_dir/log_archive_$datetime_now.tar /var/log/syslog
}

archive_file "$1"
