openssl ca -batch -config ca/intermediate/openssl-intermediate.cnf -extensions usr_cert -days 375 -notext -md sha256 -in ca/intermediate/csr/client.csr -out ca/intermediate/certs/client.crt