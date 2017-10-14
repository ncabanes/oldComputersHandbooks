## Introducción

### AMSTRAD CPC464

La informática ha evolucionado mucho en muy poco tiempo. De todas las innovaciones tecnológicas de este siglo, la informática es seguramente la más notable.

Las características de los ordenadores, tanto en el aspecto mecánico y electrónico (hardware) como en el de la programación (software) avanzan tan deprisa que incluso a los usuarios expertos les resulta difícil mantenerse al día. Por consiguiente, harían falta miles de páginas para describir exhaustivamente el BASIC del CPC464, su sistema operativo y su hardware.

Este manual es solamente una introducción al CPC464 y a su software. Para complemetarlo se han publicado numerosos libros y guías de todo tipo que el usuario puede encontrar en librerías y tiendas de ordenadores.

Los usuarios que ya conozcan otros dialectos de BASIC no encontrarán ninguna dificultad en habituarse muy deprisa al AMSTRAD BASIC. Los demás apreciarán enseguida la estructura directa y clara de esta implementación del lenguaje, que ha sido diseñada para obviar las ambigüedades y el oscurantismo de otras versiones de BASIC.

El manual se divide en varios capítulos. El primero es un 'Curso de introducción', escrito para guiar al usuario en su primer contacto con el ordenador. En el segundo ofrecemos un ejemplo de concepción y desarrollo de un programa.

El tercer capítulo contiene la descripción completa y detallada de todas las órdenes y funciones de AMSTRAD BASIC.

En el capítulo cuarto, 'Para su referencia', damos diversa información técnica.

El capítulo cinco da un repaso a ciertas cuestiones básicas de la informática, particularizadas para el CPC464.

Finalmente, el apéndice 1 es un glosario de la terminología informática y un léxico inglés-castellano.

© Copyright 1987 AMSTRAD plc

El contenido de este manual y el producto en él descrito no pueden ser adaptados ni reproducidos, ni total ni parcialmente, salvo con el permiso escrito de AMSTRAD plc (`Amstrad').

El producto descrito en este manual, así como los diseñados para ser utilizados con él, están sujetos a desarrollo y mejoras continuas. Toda la información técnica relativa al producto y su utilización (incluida la que figura en este manual) es suministrada por Amstrad de buena fe. Admitimos, no obstante, que en este manual puede haber errores u omisiones. El usuario puede obtener una lista de correcciones y modificaciones solicitándola a Amstrad o de sus distribuidores. Rogamos a los usuarios que rellenen y envíen a los distribuidores las tarjetas de registro y de garantía.

Amstrad agradecerá el envío de comentarios y sugerencias relativos a este manual y al producto en él descrito.

Toda la correspondencia se debe dirigir a

AMSTRAD ESPAÑA

Aravaca, 22

28040 Madrid

España

Toda reparación u operación de mantenimiento de este producto debe ser confiada a los talleres autorizados por AMSTRAD ESPAÑA. Amstrad no puede aceptar ninguna responsabilidad derivada del daño o pérdida que se pueda ocasionar como resultado de reparaciones efectuadas por personal no autorizado. El objetivo de este manual no es sino servir de ayuda al usuario en la utilización del producto; por consiguiente, Amstrad queda eximido de responsabilidad por el daño o pérdida a que pueda dar lugar la utilización de la información aquí publicada o la incorrecta utilización del producto.

Z80 es marca registrada de Zilog Inc.

AMSDOS, CPC6128, CPC664, CPC472 y CPC464 son marcas registradas de AMSTRAD plc

Edición 1987

Compilado por Ivor Spital

Escrito por Ivor Spital, Roland Perry, William Poel, Cliff Lawson; con la colaboración de Locomotive Software Ltd
y con aportaciones de Alexander Martin, David Radisic y Ken Clark

Traducido del inglés por Emilio Benito Santos

Publicado por Amstrad

Edición española producida por
Vector Ediciones, S.A. (91-202 49 40)

AMSTRAD es marca registrada de Amstrad plc
Queda estrictamente prohibido utilizar la marca y la palabra AMSTRAD sin la debida autorización

IMPORTANTE 

A lo largo de este manual vamos a utilizar la letra de tipo Univers negra para representar
los caracteres que aparecen en la pantalla y los que el usuario debe introducir por el teclado. Los nombres de las teclas los escribiremos recuadrados; así, por ejemplo, [INTRO] indica que
usted debe pulsar esta tecla, no escribir las letras I, N, T, R y O.

1. Para conectar el teclado, el monitor y la unidad modulador/fuente de alimentación a
otros aparatos, siga escrupulosamente las instrucciones que damos en este manual y en los manuales de otros periféricos Amstrad. De lo contrario, el ordenador puede resultar seriamente dañado y la garantía quedará anulada.

2. No intente conectar este equipo a una red de distribución de energía eléctrica que no sea de 220-240 V c.a., 50 Hz.

3. El mantenimiento que pueda hacer el usuario no requiere en ningún caso acceder al interior de la carcasa. Así pues, no abra nunca el equipo. Confíe todas las reparaciones
y operaciones de mantenimiento al servicio técnico de Amstrad España.

4. Para evitar la fatiga visual, ponga el monitor lo más alejado posible del teclado y trabaje con luz ambiente adecuada. Deje el control de brillo del monitor lo más bajo posible.

5. No obstruya los orificios de ventilación.

6. No utilice ni almacene el equipo a temperaturas demasiado altas ni demasiado bajas,
ni en lugares húmedos, polvorientos o sometidos a grandes vibraciones.

7. Mantenga alejado del ordenador todo tipo de líquidos (café, refrescos, etc.). El ordena-
dor puede resultar gravemente dañado si lo salpica con cualquier líquido. Si esto llega
a ocurrir, consulte al servicio técnico de Amstrad España.

8. Cada vez que se apaga el ordenador, se pierden todos los datos y programas que pudie- ill	ra haber en su memoria. Si desea grabar el programa antes de apagar el ordenador,
consulte la Parte 6 del 'Curso de introducción'.

9. Evite que el magnetófono y las cintas estén sometidos a la influencia de campos magné-
ticos (altavoces, televisores, imanes, etc.).

10. No apague el ordenador cuando haya una cinta en el magnetófono y esté pulsado el
botón PLAY (o REC y PLAY).

11. Aunque no apague el ordenador, no deje la cinta en el magnetófono mucho tiempo con el botón PLAY pulsado.

12. Recomendamos el uso de cintas especiales para informática. No obstante, las cintas de
audio de buena calidad son igualmente adecuadas, a condición de que no sean de dióxido de cromo ni de 'metal' y de que su duración no sea superior a 90 minutos (C90). a	Para facilitar la localización de los programas, son aconsejables las cintas C12 (seis minutos por cara).

13. Las cintas grabadas por otros ordenadores o fabricadas para ellos no pueden ser leídas por el CPC464.

14. Las cassettes tienen una «pestaña» en su extremo posterior; cuando se rompe esta pestaña, la cinta queda protegida contra escritura, es decir, no se puede grabar en ella. En tal caso, el botón REC del magnetófono no puede bajar y usted no debe tratar de forzarlo. Si desea grabar una cinta así protegida, tape con cinta autoadhesiva el hueco que ha quedado al descubierto al romper la pestaña.

15. Antes de grabar un programa, haga avanzar la cinta lo suficiente como para que el tramo de cinta de material no sensible (de color blanco o traslúcido) quede bobinado y frente a la cabeza quede material sensible (de color marrón).

16. El buen cuidado de las cintas y la limpieza periódica del magnetófono son necesarios para garantizar que la grabación y lectura de los programas se realice libre de errores.

17. En el zócalo de 'UNIDAD DE DISCO' de este ordenador se puede conectar diversos periféricos (por ejemplo, la unidad de disco DDI-1, el interfaz serie RS232C, etc.). Muchos de estos periféricos se reservan una pequeña porción de la memoria del ordenador. Algunos de los primeros programas publicados para el CPC464 aprovechan esta zona de memoria, y por lo tanto no pueden funcionar cuando se conectan los periféricos citados.
