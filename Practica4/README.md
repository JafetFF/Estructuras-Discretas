**RECURSIÓN FIRST STEPS**

Podemos ver la recursión en la canción del Pollito Pio.  Primero
empieza diciendo que hay un pollito pio (dos veces) y luego canta la
onomatopeya 6 veces. Después menciona el siguiente animal (cada uno lo
menciona dos veces), que es la gallina y seguido de esto hace su
onomatopeya y después la del pollito pio. El tercer animal que sigue
es el gallo y hace su onomatopeya seguido de los anteriores
animales. Termina cuando menciona a los anteriores animales hasta
llegar al pollito pio (el caso recursivo).  Hace esto con los
siguientes 8 animales:

- [Pollito Pio] <-- [Gallina] <-- [Gallo] <-- [Pavo] <-- [Paloma] <--
  [Gato] <-- [Perro] <-- [Cabra] <-- [Cordero] <-- [Vaca] <-- [Toro]
  <-- [Tractor].

De esta manera empieza en el pollito pio, se va al siguiente y se
regresa. Ahora sigue al siguiente del siguiente y se regresa. Podemos
pensar que los casos bases podría ser el pollito pio (hasta donde se
detiene en su retroceso), o también el tractor (cuando termina la
recursión).
  
