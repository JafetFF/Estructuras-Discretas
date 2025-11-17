# Codificación de Huffman

---

## Objetivo

Entender la como funciona la codificación y decodificación usando el
Árbol de Huffman. Además, llevar a cabo actividades que nos permitan
adentrarnos a conocer otras formas de codificar texto, imágenes, audio
y video. Y como resultado dar funciones para codificar y decodificar
una cadena de texto, para dar el Árbol de Huffman apartir de un texto.

## Codificador de Árbol de Huffman
**(tercera función en Proyecto.hs)**

1. A partir de una cadena, se construye un **árbol binario** y ese
árbol se pasa como parámetro a otra función.
2. Esa otra función se llama **codTree**, ahí se recorren los caminos
del árbol asignándoles a cada caracter 0 ó 1 dependiendo qué lado
recorra (izquierda = 0, derecha = 1).
3. Finalmente, se le pasa a la función **codifica** la palabra a
codificar y la lista de tuplas con el valor de cada letra según su
frecuencia, y con la auxiliar **cochar** va dando la cadena que le
corresponde a cada letra de la palabra a codificar.

## Función de Descifrado

1. Recibe una cadena de bits y el árbol de Huffman correspondiente.
2. Se cuenta hasta el primer '1' de la cadena y con ese valor se
encuentra la hoja en la función **regresivo**.
3. Genera el símbolo original con ayuda de la función **saca**.
Termina cuando la cadena esté vacía.

---

## Ejecución

1. Desde la terminal escribe **ghci**.
2. Luego carga el proyecto con su respectiva ubicación **:load
/ruta/cualquiera/Proyecto.hs**
3. Ahora si quieres codificar una cadena de texto coloca lo siguiente
**codint "MiFrase"**
4. Y para decodificar esa u otra frase coloca **decode "codificacion" AB**.
Dónde **"codificacion"** es la cadena de bits que ya tenías, y
**AB** es su árbol binario correspondiente.

Para sacar el árbol binario de tu frase puedes poner **stree "MiFrase"**

### NOTA

Para decodificar una cadena de bits **debes** agregar los siguientes parentesis:
decode "codificacion" **(**AB**)**
Ya que si no lo haces, te mandará un error.

## Tiempo requerido

Aproximadamente de 4 días no consecutivos.

## Comentarios extra

Fue un buen proyecto solo que por otras materias (ICC) fue de los
últimos que empecé a realizar.