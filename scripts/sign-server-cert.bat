openssl ca -batch -config ca/intermediate/openssl-intermediate.cnf -extensions server_cert -days 375 -notext -md sha256 -in ca/intermediate/csr/server.csr -out ca/intermediate/certs/server.crt