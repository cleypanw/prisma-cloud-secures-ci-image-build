#!/bin/bash

# Check if a github name syntax provided as an argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <github>"
  exit 1
fi

github_repository_name="$1"

# Remove underscores and convert to lowercase
new_github_repository_name=$(echo "$github_repository_name" | tr '_' '-' | tr '[:upper:]' '[:lower:]')

## Limit name to 10 characters
#new_github_repository_name="${new_github_repository_name:0:10}"

# Print the modified actor name
echo $new_github_repository_name