#!/bin/bash
# Generate SSH key pair on jump host
ssh-keygen -t rsa -b 4096

# Copy public key to each app server
ssh-copy-id tony@appserver1
ssh-copy-id steve@appserver2
ssh-copy-id banner@appserver3

# Alternative manual copy if ssh-copy-id is unavailable
# cat ~/.ssh/id_rsa.pub | ssh tony@appserver1 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys"

# Test password-less login
ssh tony@appserver1
ssh steve@appserver2
ssh banner@appserver3
