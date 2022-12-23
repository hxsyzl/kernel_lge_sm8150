cmd_certs/signing_key.x509 := scripts/extract-cert "certs/signing_key.pem" certs/signing_key.x509 || ( rm certs/signing_key.x509; exit 1)
