10 MODE 0
20 velocidad=600: REM velocidad del programa 
30 FOR b=0 TO 26 
40 LOCATE 3,12 
50 BORDER b
60 PRINT "color del borde:";b
70 FOR t=l TO velocidad
80 NEXT t,b
90 CLG
100 FOR p=0 TO 15
110 PAPER p
120 PRINT "papel:";p
130 FOR n=0 TO 15
140 PEN n
150 PRINT "pluma:";n
160 NEXT n
170 FOR t=l TO velocidad*2
180 NEXT t,p
190 MODE 1
200 BORDER 1
210 PAPER 0
220 PEN 1
230 INK 0,1
240 INK 1,24