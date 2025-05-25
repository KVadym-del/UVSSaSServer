all: main.exe

rsrc.rc:
	porc64.exe rsrc.rc

main.obj: main.asm
	ml64.exe /I C:\tools /c /nologo main.asm 
		
main.exe: main.obj
	link.exe /SUBSYSTEM:CONSOLE /MACHINE:X64 /ENTRY:main /nologo /LARGEADDRESSAWARE main.obj
	
run: main.exe
	./main.exe