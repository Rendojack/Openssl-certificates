openssl req -config ca/intermediate/openssl-intermediate.cnf -new -sha256 -key ca/intermediate/private/intermediate.key -out ca/intermediate/csr/intermediate.csr -subj "/C=US/ST=Unknown State/L=Unknown City/O=Unknown Inc./CN=Test intermediate"