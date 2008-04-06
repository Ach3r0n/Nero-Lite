"%programfiles%\AutoIt3\Beta\Aut2Exe\Aut2Exe.exe" /in configlicense.au3 /out "..\..\Setup\configlicense.exe" /nopack
..\..\Tools\CodeSigning\signcode.exe -s my -sha1 19eaa2ada599d6278fdbca050d72587e05dc1e85 -i http://updatepack.nl -t http://timestamp.verisign.com/scripts/timstamp.dll "..\..\Setup\configlicense.exe"
pause
exit
