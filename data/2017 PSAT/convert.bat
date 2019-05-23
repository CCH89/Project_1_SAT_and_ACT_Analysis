for %%f in (*.pdf) do (
	echo %%~nf
	pdftotext.exe -simple %%~nf.pdf %%~nf.txt
)