#!/bin/bash
ssh -v -i config/test.pem -p 2022 tool@localhost -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -R *:8000:localhost:8000
