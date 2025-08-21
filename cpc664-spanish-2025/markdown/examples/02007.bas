10 REM guia de telefonos
20 DIM NOMBRE$(100)
30 DIM TEL$(100)
32 PRINT"1. Introd. datos"
33 PRINT"2. Listado"
34 PRINT"3. Busqueda"
35 PRINT"4. Grabar datos"
36 PRINT"5. Cargar datos"
37 INPUT "Elija una opcion (1-5) "; el
38 ON el GOSUB 40,90,130
39 GOTO 32
40 FOR x=1 TO 100
45 cls
47 PRINT "Pulse [ENTER] para terminar"
50 INPUT " Nombre " ;NOMBRE$(x)
55 IF NOMBRE$(x)="" THEN 80
60 INPUT " Telefono ";TEL$(x)
70 NEXT
80 PRINT "Fin de la entrada de datos"
85 RETURN 
90 FOR x=1 TO 100
95 IF NOMBRE$(x)="" THEN 120 
100 PRINT NOMBRE$(x);" ";TEL$(X)
110 NEXT
120 PRINT "Fin de la lista"
125 RETURN 
130 INPUT "Buscar ";BUSCA$ 
140 FOR x=1 TO 100
150 IF INSTR(NOMBRE$(x),BUSCA$)=0 THEN 180 
160 PRINT NOMBRE$(x);" ";TEL$(x) 
170 RETURN 
180 NEXT
190 PRINT"No lo encuentro"
200 RETURN
