#!/bin/sh

jq -L . -nrf hello-world-test.jq > received.txt
diff received.txt approved.txt