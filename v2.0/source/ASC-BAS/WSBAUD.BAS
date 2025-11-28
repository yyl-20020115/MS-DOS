10 ' WSBAUD.BAS
20 '
30 ' Simple program to set the baud rate of the communications
40 ' card of the IBM PC.  The new baud rate stays in effect until
50 ' the next re-boot of the system.
60 '
70 ' MicroPro International Corporation, May 24, 1982
80 '
90 PRINT
100 PRINT "         ----- WSBAUD -----"
110 PRINT
120 RESTORE
130 DATA 110,300,1200,2400,4800,9600
140 FOR I=1 TO 6
150 READ B
160 PRINT "        ";I;" => ";B;" baud"
170 NEXT I
180 PRINT
190 INPUT "Which baud rate do you want? ",BAUD
200 IF (BAUD<1 OR BAUD>6) THEN PRINT CHR$(7):GOTO 90 
210 PRINT
220 ON BAUD GOTO 280 ,300 ,320 ,340 ,360 ,380 
230 GOTO 90 
240 ' NOTE: The communications card is always opened w/
250 '       8 data bits
260 '       NO parity
270 '       1 stop bit  (except for 110 baud)
280 OPEN "COM1:110,N,8,2" AS #1
290 GOTO 400 
300 OPEN "COM1:300,N,8,1" AS #1
310 GOTO   400 
320 OPEN "COM1:1200,N,8,1" AS #1
330 GOTO   400 
340 OPEN "COM1:2400,N,8,1" AS #1
350 GOTO   400 
360 OPEN "COM1:4800,N,8,1" AS #1
370 GOTO   400 
380 OPEN "COM1:9600,N,8,1" AS #1
390 GOTO   400 
400 PRINT
410 RESTORE 130 
420 FOR I=1 TO BAUD
430      READ B
440 NEXT I
450 PRINT "Communications card i/o rate set to ";B;" baud."
460 SYSTEM
470 SYSTEM
