#!/bin/bash

FULLPATH=`readlink -f $(dirname $0)`

set -x
puppet apply --modulepath="$FULLPATH" --node_terminus=exec --external_nodes="$FULLPATH/enc" --noop -e ''  "$@"
