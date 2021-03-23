#!/bin/bash

# generate a private key 
openssl genrsa -out private-key.pem 3072
# generate a public key from the private key
openssl rsa -in private-key.pem -pubout -out public-key.pem