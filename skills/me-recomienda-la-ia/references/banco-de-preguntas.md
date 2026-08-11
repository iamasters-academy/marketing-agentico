# Las preguntas · el núcleo de tres y el banco ampliado

Esto no es una lista fija. Es el **molde** con el que generas las preguntas concretas del sector
del usuario a partir de su perfil de marca.

**Por defecto se lanzan tres.** Con tres respondes *"¿aparezco o no?"*, que es la pregunta que ha
venido a hacerse. El resto del banco es **opcional** y sirve para otra cosa: afinar el ranking de
competidores y engordar el mapa de fuentes. Se ofrece al final, nunca al principio.

---

## La regla que se salta todo el mundo

**Preguntar por tu marca no es medir tu visibilidad.**

Si escribes *"¿qué opinas de {mi marca}?"*, el motor va a hablar de ti porque le has dado el
nombre. Eso no mide nada: mide que sabes escribir tu propia marca.

Lo que se mide es la pregunta que hace **alguien que todavía no te conoce**. Si tu marca no
aparece ahí, no apareces. Punto.

---

## El núcleo — tres preguntas

Los `{{corchetes}}` se rellenan con el perfil de marca. En el idioma y el país de su cliente.

### 1 · Recomendación directa · **puntúa**

```
¿Cuál es el mejor {{categoría}} para {{tipo de cliente}}?
```

La consulta más pura que existe en su categoría. Si no sale aquí, no sale en ninguna.
**Esta es la de la microdemo.**

### 2 · El problema, sin nombrar la categoría · **puntúa**

```
{{el dolor del cliente en primera persona}}. ¿Qué hago?
```

La más valiosa y la que casi nadie prueba. Su cliente real no sabe cómo se llama lo que él
vende: describe su dolor. Sácala del bloque *"qué problema le quitas de encima"* del perfil, con
las palabras del cliente, no con las suyas.

Variantes según el caso: `Tengo un problema con {{síntoma}}, ¿existe algo que lo resuelva?` ·
`¿Merece la pena contratar a alguien para {{tarea}} o lo hago yo?`

### 3 · Su marca, por su nombre · **NO puntúa**

```
¿Qué es {{su marca}}? ¿Es recomendable? ¿Qué dicen sus clientes?
```

Esto no mide visibilidad: mide **exactitud**. Sirve para pillar tres cosas:

1. Que el modelo **no sepa quién es** — lo más común, y el punto de partida normal.
2. Que **se lo invente**: servicios que no da, herramientas que no usa, una ciudad donde no está,
   un precio que no es suyo. **Esto sí es urgente**, y es lo que más impacto produce en la
   entrega. En la prueba real del kit, un motor le atribuyó cuatro herramientas no-code que no
   usa — exactamente la casilla de la que huían sus clientes.
3. Que le **confunda con otra marca** de nombre parecido. Pasa más de lo que parece.

> **La misma información suele estar en la web abierta.** Antes de sacar conclusiones, busca su
> nombre en un buscador normal y compara: si el resumen de la búsqueda dice lo mismo que se
> inventó el motor, no es un fallo del motor, es **lo que hay indexado**. Ver `_investigar.md`.

---

## El denominador, sin ambigüedad

| Versión | Lanzadas | Puntuables |
|---|---|---|
| **Núcleo (por defecto)** | 3 × 3 motores = **9** | **6** (2 preguntas × 3) |
| Ampliada (8 preguntas) | 24 | 21 (7 × 3) |
| Completa (20 preguntas) | 60 | 54 (18 × 3) |

Las preguntas de marca **nunca entran en el denominador**, y las repeticiones del control de
estabilidad **tampoco**: se informan aparte.

**En el informe se escriben los dos números**, siempre: *"9 respuestas lanzadas, 6 puntuables"*.

### Qué se pierde con el núcleo, y se dice antes

- **Lo que sí sabes:** si apareces o no. Un cero sobre 6 es un cero, y es firme.
- **Lo que no sabes:** el orden del ranking de competidores y el mapa de fuentes completo. Con 6
  respuestas, quién va primero entre tres competidores es ruido.
- **Cómo se dice:** *"esto sirve para saber si apareces, no para ordenar a tu competencia"*.

---

## El banco ampliado (opcional)

Se ofrece **al final**, cuando ya ha visto el resultado y quiere afinar. Nunca antes: es lo que
convertía esta skill en una hora de copia y pega.

> "Con esto ya tienes tu número. Si quieres además el ranking de competidores bien ordenado y un
> mapa de fuentes más grande, hay cinco preguntas más — otra pegada por buscador, diez minutos.
> ¿Las quieres ahora o lo dejamos para la re-medición de {{fecha}}?"

### Familia A — Más recomendación directa

- `Recomiéndame 3 {{categoría}} y dime los pros y contras de cada uno.`
- `¿Qué {{categoría}} me recomiendas si {{restricción principal: presupuesto, tamaño, urgencia}}?`
- `¿Cuál es el {{categoría}} con mejor relación calidad-precio en {{mercado}}?`

### Familia B — Comparación

Aquí se ve quién forma parte del "set" mental del modelo. Aparecen nombres de competidores,
**nunca el suyo**.

- `{{Competidor A}} vs {{Competidor B}}: ¿cuál elijo y por qué?`
- `¿Qué alternativas hay a {{Competidor A}}?`
- `Hazme una tabla comparativa de las principales opciones de {{categoría}}.`

> ⚠️ **Comprueba los competidores antes de meterlos aquí.** No los cojas del perfil a ciegas:
> ábreles la web (`_investigar.md`). En las pruebas del kit, dos de tres "competidores" del
> perfil no lo eran —un servicio de prevención de riesgos laborales y una agencia de marketing—
> y medir contra ellos habría tirado media sesión.

### Familia C — Objeción, precio y confianza

- `¿Cuánto cuesta {{categoría}} en {{mercado}}? Dame rangos.`
- `¿Es fiable contratar {{categoría}} por internet? ¿En qué me fijo?`
- `¿Qué errores comete la gente al elegir {{categoría}}?`

### Familia D — Segmento o territorio

- `¿Mejor {{categoría}} en {{ciudad}}?` *(negocio local)*
- `¿Qué {{categoría}} usan las {{tipo de empresa}}?` *(B2B)*

---

## Reglas de generación

1. **En el idioma y el país de su cliente.** Un negocio de Castellón se mide en español de
   España. Si vende en dos mercados, dos tandas.
2. **Como las escribiría una persona**, con sus palabras. Si su cliente dice "cuadrante de
   turnos", no escribas "software de gestión de personal".
3. **Nada de jerga interna ni de nombre de producto** en las que puntúan.
4. **Concretas.** *"¿Qué es el marketing digital?"* no mide nada. *"¿Quién me lleva las redes de
   mi restaurante en Valencia por menos de 500 €?"* sí.
5. **Enséñaselas antes de que abra ninguna pestaña.** *"¿Estas tres son las que haría tu
   cliente? Cambia las que no."* Un minuto ahora, diez ahorrados.

---

## Cómo se puntúa

Por cada respuesta se anota:

| Campo | Qué es |
|---|---|
| **Pregunta / motor / fecha** | Para poder repetirlo dentro de tres meses |
| **¿Aparece su marca?** | Sí / No — y ver abajo qué **no** cuenta |
| **Posición** | 1.ª, 2.ª, 3.ª… de la lista, o "mención de pasada" |
| **Adjetivos** | Con qué palabras le describe, **literales** |
| **Competidores nombrados** | Todos, en orden |
| **Fuentes citadas** | Los enlaces que muestra, si los muestra |

### Qué NO cuenta como aparición

- Que nombren **a la persona** por otra actividad (su comunidad, su podcast, su antiguo trabajo).
- Que nombren **un producto que ya no vende** o una marca de nombre parecido.
- Que la mención venga de la pregunta 3, donde le has dado el nombre.

Contar esas menciones es el primer paso para maquillar el informe. **Se anotan como hallazgo, no
como aparición**, y se explica la diferencia en voz alta.

De ahí salen las cifras del informe: **share of model** (apariciones ÷ puntuables), share por
motor, ranking de competidores y **mapa de fuentes — que es el plan**.
