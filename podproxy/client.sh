#!/bin/bash
ssh -v -i config/test.pem -p 2022 tool@localhost -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -R *:8443:localhost:8443
