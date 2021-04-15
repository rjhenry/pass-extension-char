#!/bin/bash
path="$1"
index="$2"
passfile="${PREFIX}/${path}.gpg"
# Like.. 99% sure this is done anyway but it's worth checking.
check_sneaky_paths "$path"

# Check index is a number
if ! [[ $index =~ ^[0-9]+$ ]]; then
    # Echo message and exit 1
    die "Error: Index for pass char must be an integer"
elif [[ -f $passfile ]]; then
    echo "$($GPG -d "${GPG_OPTS[@]}" "$passfile" | \
        head -c "$index" | \
        tail -c 1)"
elif [[ -z $path ]]; then
    # Echo message and exit 1
    die ""
else
    # Echo message and exit 1
    die "Error: $path is not in the password store."
fi
