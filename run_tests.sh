#!/bin/sh

jq -L . -nrf hello-world-test.jq > received.txt
diff received.txt approved.txt && echo "Tests Pass"  || ( echo "Tests Failed" && false )
