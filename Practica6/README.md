# Objetivo

Familiarizarse con las representaciones gráficas de árboles
utilizando la herramienta *Mermaid* y seguir creando funciones
con árboles binarios. Además de implementar una *licencia* en
nuestro repositorio de GitHub.

# Tiempo requerido

Aproximadamente **2 horas**

# Actividad 1
## De representación visual a AB
**Sintaxis**

Árboles de 3 y 4 niveles.

‘‘‘ mermaid
graph TB
    A((6))-->B((5))
    A-->C((12))
    B-->D((15))
    B-->E((45))
    C-->H((5))
    H-->I((67))
    H-->J(((-32)))
    D-->F((54))
    D-->G((09))
‘‘‘
‘‘‘ mermaid
graph TB
    A((54))-->B((97))
    A-->C(((-6)))
    B-->D(((-34)))
    B-->E((4))
    D-->F((76))
‘‘‘

## De AB a representación visual

**a) AB 4 (Vacio) (AB 3 Vacio Vacio)**

‘‘‘ mermaid
graph TB
    A((4))-->B(( ))
    A-->C((3)))
‘‘‘

Dejamos el nodo B sin nada porque es Vacio, a menos que
lo hagamos evidente poniendo Vacio dentro de B.

**b) AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))**

‘‘‘ mermaid
graph TB
    A((4))-->B((Vacio))
    A-->C((3))
    C-->D((Vacio))
    C-->E((5))
‘‘‘

**c) AB 3 (AB 7 (AB 12 Vacio Vacio) Vacio) (AB 6 (AB 11 Vacio Vacio) (AB
10 Vacio Vacio))**

‘‘‘ mermaid
graph TB
    A((3))-->B((7))
    A-->C((6))
    B-->D((12))
    B-->G((Vacio))
    C-->E((11))
    C-->F((10))
‘‘‘

