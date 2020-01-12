#!/bin/hs
[[ -e /etc//init/helloworld.conf ]] \
   && status helloworld | \
      grep -q '^helloworld start/running, process' \
   && [[ $? -q 0 ]] \
   && stop helloworld || echo "Application not started"
