:: Delete previous output
rmdir /S /Q out

:: Delete ca data
del /S /Q ca\private\*
del /S /Q ca\certs\*
del /S /Q ca\newcerts\*

type nul > ca\index.txt
del ca\index.txt.old

del ca\index.txt.attr
del ca\index.txt.attr.old

> ca\serial echo 1000 
del ca\serial.old

:: Delete intermediate data
del /S /Q ca\intermediate\private\*
del /S /Q ca\intermediate\csr\*
del /S /Q ca\intermediate\certs\*
del /S /Q ca\intermediate\newcerts\*

type nul > ca\intermediate\index.txt
del ca\intermediate\index.txt.old

del ca\intermediate\index.txt.attr
del ca\intermediate\index.txt.attr.old

> ca\intermediate\serial echo 1000 
del ca\intermediate\serial.old