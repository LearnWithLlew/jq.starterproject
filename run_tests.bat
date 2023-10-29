jq -L . -nrf hello-world-test.jq > received.txt
FC received.txt approved.txt && echo "Tests Pass"  || (echo "Tests Failed" && exit /b 1)
