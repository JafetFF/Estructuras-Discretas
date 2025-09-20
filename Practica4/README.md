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



**OBJETIVO DE LA PRÁCTICA 4**

Utilizando recursión, implementar funciones donde utilicemos
tipos de datos (Natural y Matrioska) que definiremos al inicio
de la actividad

*Naturales*

1. a_natural

Lo que se me ocurrió para establecer el caso base (los) fue
recordar lo que vimos en clase, donde fuimos obteniendo los demás
números apartir del Cero y el uno (Suc(Cero)). Y el caso recursivo,
sabiendo que podia de alguna manera decrementar el numero que nos dan
para llegar a un caso base (sino nunca acabaría) lo que hice fue solo
restar 1 al numero en cada recursión.

2. a_entero

En la segunda función, como de manera intuitiva supe que iba a ser
muy similar a la primera solo que sería todo lo contrario. Entonces
para los casos base iban a ser los mismos que el primero pero al
revés. Para el caso recursivo es como abrir cada S (sucesor) porque al
no saber cuantas veces lo tendremos que "abrir" eso es lo ideal, y de
esta manera en cada recursión vamos sumando 1 para al llegar a un caso
base todo lo anterior se sume y nos dé el número en Int.

3. potenciaNat

La 3 pensé que iba a ser muy rápido como las anteriores ja, ja, ja,
pero no y sí. Los casos base los ideé como normalmente podemos ver en
las matemáticas, algo distinto a cero elevado a la cero siempre será
1, cero a la cero es una indefinición, etc. El caso recursivo como lo
recordaba era multiplicar el primer Natural por lo que salga de hacer
la recursión, pero me di cuenta de que tendría que definir antes de
ello la funcion para multiplicar PEROOO antes debía definir suma
porque en eso se basa la función de multiplicar.

4. facNat

Para los casos base definí Cero y (S Cero) (1) porque ese es el
valor minimo al que puede llegar para sacar factorial. Para el caso
recursivo como a tenía la función multNat entonces solo tendría que
usarlo para multiplicar el (S m) por lo que saliera de la recursión de
ese mismo Natural pero sin un Sucesor, es decir, de (S m) ----> (m) y
así hasta llegar a un caso base.

*Mati*

5. mayorIgual

Los casos base como sólo tenemos tres posibles situación fue fácil
definirlos, primero cuando son iguales y cuando el primero es mayor al
segundo son true, y cuando es menor que el segundo es false. El caso
recursivo únicamente trata de abrir a las dos matrioskas, para
eventualmente, llegar a un caso base no importando la diferencia de
matrioskas que tienen entre ellas.

6. aplana

Para la última función como el dato más pequeño que puedo tener es
Mati y seguido de él a (Cont Mati) entonces esos serán nuestros casos
base en forma de lista. Y para el caso recursivo es abrir cada
matrioska (para llegar al caso recursivo) pero en cada vuelta
recursiva "pegamos" el elemento que nos dieron y después hacemos la
vuelta recursiva pero abriendo la matrioska.

* TIEMPO EMPLEADO
Aproximadamente 4 horas

* COMENTARIOS EXTRA
Fue muy entretenida hacer esta actividad y aprendí
muchas cosas que no sabía.