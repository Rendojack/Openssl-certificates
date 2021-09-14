call clean-up.bat

call scripts/gen-root-key.bat
call scripts/gen-root-cert.bat

call scripts/gen-intermediate-key.bat
call scripts/gen-intermediate-csr.bat

call scripts/sign-intermediate-cert.bat
call scripts/gen-trusted-chain.bat

call scripts/gen-server-key.bat
call scripts/gen-server-csr.bat
call scripts/sign-server-cert.bat

call scripts/gen-client-key.bat
call scripts/gen-client-csr.bat
call scripts/sign-client-cert.bat

call scripts/show-root-cert.bat
call scripts/show-intermediate-cert.bat
call scripts/show-server-cert.bat
call scripts/show-client-cert.bat

call scripts/verify-intermediate-cert.bat
call scripts/verify-server-cert.bat
call scripts/verify-client-cert.bat

:: Additional manipulations
xcopy /s ca\certs\ca.crt out\ca.crt*
xcopy /s ca\intermediate\certs\intermediate.crt out\intermediate.crt*
xcopy /s ca\intermediate\certs\client.crt out\client.crt*
xcopy /s ca\intermediate\certs\server.crt out\server.crt*

xcopy /s ca\private\ca.key out\ca.key*
xcopy /s ca\intermediate\private\intermediate.key out\intermediate.key*
xcopy /s ca\intermediate\private\client.key out\client.key*
xcopy /s ca\intermediate\private\server.key out\server.key*

openssl pkcs12 -in out\intermediate.crt -inkey out\intermediate.key -export -out out\intermediate.pfx -passout pass:
openssl pkcs12 -in out\client.crt -inkey out\client.key -export -out out\client.pfx -passout pass:
openssl pkcs12 -in out\server.crt -inkey out\server.key -export -out out\server.pfx -passout pass:
openssl pkcs12 -in out\ca.crt -inkey out\ca.key -export -out out\ca.pfx -passout pass:
