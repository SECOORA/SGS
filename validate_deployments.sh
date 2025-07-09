#!/bin/bash

DIR="${1:-$(pwd)}"
valid=1

for json_file in $(find "$DIR" -type f -name "deployment.json"); do
    if [[ $json_file =~ "template-YYYYMMDDTHHII" ]]; then
        continue
    fi
    # Check that the deployment directory name matches the
    # attributes set in deployment json
    deployment_dir_name=$(basename $(dirname $json_file))
    deployment_name=$(jq -r '"\(.glider)-\(.trajectory_date)"' $json_file)
    if (( $? )); then
        echo "Failed to read $json_file"
        valid=0
        continue
    fi

    if [[ $deployment_dir_name != $deployment_name ]]; then
        echo "Invalid deployment config: $json_file"
        echo "Directory name does not match '$deployment_name' (based on the 'glider' and 'trajectory_date' attributes)."
        valid=0
    fi
done

if (( $valid )); then
  echo "All deployment JSON files passed."
  exit 0
fi

exit 1

