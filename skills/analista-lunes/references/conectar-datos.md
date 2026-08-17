# Conectar los datos, en vez de descargarlos cada semana

> Este fichero es la mitad del valor de la skill, y la que casi nadie aprovecha.
>
> Pegar un CSV funciona **una vez**. El lunes siguiente hay que volver a exportar, y al tercer
> lunes ya nadie lo hace. **La única versión de esta skill que sobrevive tres meses es la que
> lee los datos donde viven.**

---

## Dilo al final de la primera sesión, no al principio

**Orden importa.** La primera vez se hace con el CSV pegado: es rápido, funciona y el usuario ve
el resultado sin montar nada. Solo **cuando ya tiene el informe delante** se le dice esto:

> "Esto que acabamos de hacer con un fichero descargado, se puede hacer con tu fuente
> conectada. La diferencia es que la próxima vez no exportas nada: dices «analiza el lunes» y
> ya está. Diez minutos de configuración, una sola vez."

Si se lo dices antes de que vea el resultado, es una tarea más. Después, es un atajo obvio.

---

## Los tres caminos, por orden de menos trabajo a más

### Camino 1 — Conector oficial (si su herramienta está en la lista)

El directorio de conectores de Claude pasa de los 400. Los que importan para marketing:

| Herramienta | Qué se puede hacer | Nota |
|---|---|---|
| **HubSpot** | Leer **y escribir**: contactos, negocios, notas, tareas, actividades, búsquedas | Conector de primera parte. Es el más completo de los de CRM |
| **Intuit Mailchimp** | Leer campañas, audiencias y suscriptores; y actualizar donde está soportado | Lectura y escritura |
| **Google Sheets / Drive** | Leer hojas de cálculo directamente | La salida universal: casi cualquier herramienta exporta a Sheets |
| **Google Analytics** | Sesiones, canales, conversiones | Requiere que él administre la propiedad. En PYME casi nunca es el caso |

**Cómo se activa** (y hay que decirlo con estas palabras, porque no está donde la gente busca):

> "En la app de Claude o en claude.ai: **Ajustes → Conectores**. Busca el tuyo, pulsa Conectar y
> autoriza. No es la terminal, no hay que instalar nada, y se hace una vez."

**Compruébalo antes de prometerlo.** Mira si tienes herramientas de esa fuente disponibles en la
sesión. Si no las ves, **no digas que existe el conector**: di que existe en el directorio y que
hay que activarlo, y sigue con el CSV de hoy.

### Camino 2 — Su herramienta no está en la lista (el caso más común)

Y es normal: la mayoría de las PYMEs usan un CRM de nicho, uno sectorial o uno hecho a medida.
**No es un problema y hay tres salidas, en orden de esfuerzo:**

| Salida | Cuándo | Qué implica |
|---|---|---|
| **Export programado a Google Sheets** | Casi siempre la mejor | Casi todos los CRM permiten programar un envío o un volcado periódico a una hoja. Conectas Sheets —que sí tiene conector— y ya está. **El CRM no se toca** |
| **Puente con Zapier o Make** | Si el CRM tiene webhooks | Cada lead nuevo escribe una fila en la hoja. Tiempo real, sin exportar |
| **MCP propio contra su API** | Solo si hay quien lo mantenga | Es lo más limpio y lo que más se rompe cuando nadie lo cuida. **No lo propongas a alguien de marketing sin equipo técnico detrás** |

> **La regla:** un CRM sin conector oficial **no** significa volver al copia-pega manual para
> siempre. Significa dar un salto por Google Sheets. Dilo así, porque la gente asume lo primero.

### Camino 3 — Pegar el fichero (hoy, y solo hoy)

Es lo que se hace en la primera sesión. Sigue siendo válido. Lo que no es válido es dejarlo como
el método permanente sin haber dicho que hay otro.

---

## La rutina: que se ejecute sin que nadie se acuerde

Aquí está el salto de verdad. Una vez la fuente está conectada, el análisis **no necesita que
alguien se siente a pedirlo.**

Según dónde esté:

- **Claude Code / Cowork:** una tarea programada que ejecute el análisis los lunes a primera hora
  y deje el HTML en su carpeta. Se configura una vez.
- **Claude.ai:** las tareas programadas de la app. Mismo efecto: el informe aparece hecho.

**Qué tiene que decir la rutina** —y esto es lo que la hace útil y no ruido—:

> "Lee los datos de {fuente}. Compara los últimos 30 días con los 30 anteriores. Aplica el
> filtro de ruido. Dame **las tres cosas que han cambiado** con su hipótesis, y **lo que pasó con
> las hipótesis de la semana pasada**. Si no ha cambiado nada relevante, dilo en dos líneas y no
> generes el informe."

Esa última frase es la importante. **Un informe semanal que siempre dice algo es un informe que
nadie lee al mes.** El que se calla cuando no hay noticia, se lee.

---

## El bucle, que es lo que hace que esto valga

Sin registro no hay método: hay una foto semanal que se olvida. Cada informe deja un fichero
—`historico-analista.md` o una pestaña en la hoja— con las tres hipótesis, la fecha, y qué
comprobación quedó pendiente. **La sesión siguiente empieza leyéndolo.**

Y esa es la sección del informe que más vale del kit entero: *"lo que pasó con las hipótesis del
lunes pasado"*. Es lo que convierte una intuición en un método — y es el paso que se cae en la
práctica, así que dilo dos veces.

---

## Lo que no se hace nunca

- **No pedir credenciales.** Ni contraseñas, ni claves de API, ni que te añada como usuario. El
  conector se autoriza en Ajustes, en su propia sesión, y tú no ves nada. Si te ofrece una
  contraseña —y lo va a hacer— recházala y explica el camino correcto.
- **No proponer un MCP a medida** a alguien que no tiene quien lo mantenga.
- **No prometer un conector sin comprobar** que existe. Comprueba, y si no, di la alternativa.
