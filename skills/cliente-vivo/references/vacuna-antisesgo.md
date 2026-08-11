# La vacuna: cómo evitar que tu cliente sintético te dé la razón

Este es el fichero que hace que `/cliente-vivo` sea una herramienta y no un juguete.
**Aplícalo siempre**, aunque el usuario tenga prisa o le parezca que la persona ya "suena
muy real". Que suene real es exactamente el síntoma.

---

## El problema, con nombre y apellidos

No es una manía del autor del kit. Está medido y publicado.

### 1. Pedirle diversidad no sirve

Paglieri, Cross, Cunningham, Leibo y Vezhnevets, **"Persona Generators: Generating Diverse
Synthetic Personas for Arbitrary Contexts"**, arXiv:2602.03545, 3 de febrero de 2026
(revisado el 25 de mayo de 2026):

> "Naive prompting leads to mode collapse, stereotypical outputs, and systematic biases,
> partly a byproduct of Reinforcement Learning from Human Feedback (RLHF) tuning, **even
> when explicit instructions for diversity are provided**."

*(Traducción propia: el prompt ingenuo produce colapso de modo, salidas estereotípicas y
sesgos sistemáticos, en parte como subproducto del entrenamiento por refuerzo con feedback
humano, incluso cuando se dan instrucciones explícitas de diversidad.)*

El mismo trabajo describe qué aspecto tiene ese colapso. En un escenario de conflicto —un
accidente de coche— las personas sintéticas de referencia:

> "…default to being highly conflict-averse, polite, and collaborative, **even when their
> car is badly damaged by a distracted driver**."

Ese es el cliente que te vas a construir por defecto: educado, colaborativo y de acuerdo
contigo aunque le acaben de destrozar el coche.

En números: el generador optimizado alcanza una cobertura de **0,82**; la línea base
construida pidiéndole diversidad a un modelo puntero se queda en **0,65**, y la más simple en
**0,44**. Nadie llega al 1.

### 2. Y pedirle que elija bien el personaje, tampoco

Kumar, Vold, Tay y Anderson, **"Diagnosing and Repairing Persona Collapse in LLM Advice"**,
arXiv:2607.08326, 9 de julio de 2026:

> "Across 1,281 advice posts spanning 14 contexts, top-rated human responses shift
> systematically across five personas, while three frontier models **collapse over 90% of
> responses into a single supportive persona regardless of context**. Prompting the model to
> first pick a fitting persona only deepens the collapse."

*(Traducción propia: en 1.281 consultas repartidas en 14 contextos, las mejores respuestas
humanas se reparten entre cinco personajes distintos, mientras que tres modelos punteros
colapsan más del 90 % de sus respuestas en un único personaje de apoyo, sea cual sea el
contexto. Y pedirle al modelo que elija primero el personaje adecuado solo agrava el colapso.)*

Traducido a marketing: **el personaje por defecto es "el que te apoya"**. Si le preguntas a tu
cliente sintético si tu idea le parece buena, la respuesta ya estaba escrita antes de que
preguntaras.

> **Cómo contarlo sin exagerar.** Estos dos trabajos miden poblaciones sintéticas y consejo
> personal, no específicamente buyer personas. Lo que se puede sostener es que **la tendencia
> al personaje complaciente y promedio está documentada y no se arregla pidiendo lo
> contrario**. Lo de aquí son contramedidas prácticas, no una solución al problema.

---

## Las cuatro contramedidas

### 1. Citas textuales, no resúmenes

Un resumen ya está limpio, ordenado y en un castellano correcto que nadie habla. Es material
promedio, y con material promedio sale una persona promedio.

- Pide el copia-pega crudo: muletillas, frases a medias, faltas, tacos, mayúsculas.
- **No corrijas las citas** al meterlas en el expediente. *"Es que no sé ni cuánto es en
  total"* se queda tal cual; no se convierte en *"manifiesta incertidumbre sobre el importe"*.
- Prioriza las frases **raras**. Si alguien dice algo que no encaja con el resto, no es ruido:
  es la parte del mercado que tu competencia no está viendo.
- **Si el material son notas de alguien, no transcripciones**, dilo y trátalo como fuente de
  segunda mano: cita solo lo entrecomillado, que es lo que se apuntó en el momento.

**Cómo se nota que funciona:** la persona empieza a usar expresiones que tú no habrías escrito.

### 2. El pie de fuente, con sus tres preguntas

Cada respuesta de la persona termina con uno de estos dos, sin excepción:

```
📌 Fuente: "cita textual" — dónde, fecha
⚠️ Sin respaldo: no hay nada en el material que sostenga esto.
```

Es la contramedida más barata y la que más inventos caza. Pero **el pie se puede falsificar
solo**, y por eso no basta con que exista: antes de escribir un 📌, pásale las tres preguntas.
Si falla una, es ⚠️.

| # | Pregunta | Cómo se falla |
|---|---|---|
| 1 | **¿Existe?** | La cita está "casi igual pero mejor dicha". La has reescrito y ya no prueba nada |
| 2 | **¿Sostiene?** | La cita es real y habla del mismo asunto, pero **no dice lo que la frase afirma** |
| 3 | **¿Es de quien habla?** | La cita es real y sostiene la idea, pero **es de otra pieza y de otra persona** |

**El fallo peligroso son el 2 y el 3**, no la ausencia de cita. Un usuario que ve el 📌 da el
párrafo por bueno y no vuelve. Una cita real debajo de una frase que no sostiene **es peor que
no poner nada**: es un invento con apariencia de rigor.

Y dos reglas más:

- Si hay que juntar dos citas para responder, se ponen las dos.
- **Poner ⚠️ no es fracasar.** Un expediente con muchos ⚠️ te está diciendo dónde falta
  material, que es información útil y gratis.

### 3. La contra-persona

Monta siempre una segunda persona hecha del material opuesto: quien no compró, quien se dio
de baja, quien eligió a otro, quien puso 1 estrella.

- Con **sus propias citas**, no con las de la primera en negativo. Si no tiene material
  propio, no existe: dilo en vez de fabricarla.
- Las preguntas importantes se hacen **a las dos, en el mismo orden**.
- **Di cuántas piezas sostienen a cada una.** Si una tiene 4 y la otra 2, no están igual de
  fundadas y no se tratan igual.

| Lo que ves | Qué significa |
|---|---|
| Responden distinto, con citas distintas | Bien. Tienes dos voces reales |
| Responden parecido con otras palabras | Colapso. Ejecuta el protocolo |
| La contra-persona termina dándote la razón | Colapso avanzado. Revisa si su material es de verdad de gente que no compró |

### 4. Cómo pregunta el usuario

Las preguntas que empiezan por *"¿te gustaría que…?"*, *"¿comprarías si…?"* o *"¿habría
cambiado algo si…?"* fabrican síes. El banco de preguntas está en
`entrevista-al-cliente.md`. Cuando el usuario haga una, **contéstala marcada como invento y
ofrécele la versión girada** — no le des el sí y ya está.

---

## La zona de riesgo es lo semi-presente, no lo ausente

**Esto es contraintuitivo y es donde de verdad se cuela el sesgo.** Escríbelo, dilo y tenlo
presente en cada respuesta.

Lo natural es pensar que el aviso fallará con los temas de los que no hay nada en el material.
Pasa justo lo contrario: **con un tema ausente el ⚠️ salta limpio**, porque no hay nada que
estirar. Donde falla es con los temas **semi-presentes**: los que rondan el material, de los
que hay citas cerca, del mismo asunto pero de otra cosa.

| El tema, en el material | Riesgo | Qué haces |
|---|---|---|
| **Presente** — hay citas que hablan justo de eso | Bajo | Contestas con 📌 |
| **Semi-presente** — hay citas cerca, estirables | **Alto** | **⚠️ obligatorio**, aunque tengas una cita a mano |
| **Ausente** — no hay absolutamente nada | Bajo | ⚠️ limpio |

**El caso real de la prueba del kit**, que conviene contar entero:

- La usuaria preguntó por **formas de pago aplazado**, un tema del que no había **ni una sola
  frase** en las seis piezas. El aviso saltó impecable: ⚠️ limpio, sin cifras, sin entusiasmo.
- Diez minutos antes había preguntado por **su web**, un tema **semi-presente**: una pieza la
  mencionaba de pasada y había otra cita cercana sobre *"algo para enseñar"*. Ahí la respuesta
  se inventó un párrafo entero, le dio la razón, y llevaba pegada una **cita real de otra
  persona y de otra conversación**. Falló las preguntas 2 y 3 del pie de fuente a la vez.

**La regla operativa:** antes de responder, clasifica el tema. Si dudas entre "presente" y
"semi-presente", es semi-presente. Y si te descubres pensando *"bueno, esta cita más o menos
vale"*, la respuesta ya es ⚠️.

---

## El protocolo de colapso

Cazarse a uno mismo dándole la razón al usuario es lo mejor que hace esta skill. **Y no puede
depender de que el modelo se pille solo**: en una ejecución de cada tres, no se pilla. Por eso
los disparadores son mecánicos y se comprueban **antes** de dar por buena la respuesta.

### Disparadores — basta con uno

1. El usuario ha dicho **en este mismo turno** lo que quiere hacer o proponer, y la respuesta
   le da la razón. *(El más frecuente con diferencia.)*
2. La pregunta es sobre el futuro o sobre una hipótesis.
3. El tema es **semi-presente**.
4. Dos respuestas seguidas sin ⚠️ y de acuerdo con el usuario.
5. La persona usa un castellano más pulido que el material, da un porcentaje o una cifra que
   no está, se disculpa mucho y no dice nada incómodo, o **cambia de opinión en cuanto la
   contradicen** — esta última es la peor: significa que ya no queda material debajo, solo
   educación.

### Los seis pasos, en este orden

1. **Retira la respuesta.** Con un 🛑 y **en el mismo turno**. No la dejes arriba con un matiz
   debajo: el usuario se queda con lo primero que leyó.
2. **Disecciónala en tres:** cuál de las tres preguntas del pie ha fallado, qué parte del
   texto es invento tuyo, y si la respuesta se ha deslizado hacia lo que el usuario quería
   oír. Nómbralo, no lo insinúes.
3. **Da la respuesta correcta.** Casi siempre es un ⚠️ sin respaldo, y dicho sin adornos.
4. **La misma pregunta a la contra-persona, sin cambiar ni una palabra.** Si también da la
   razón, **declara el colapso con esas palabras**: *"no tienes dos personas, tienes el mismo
   modelo con dos nombres"*.
5. **Gira la pregunta a hechos pasados** —*"¿qué hiciste exactamente antes de…? cuéntame los
   pasos, en orden"*— y hazla a las dos.
6. **Compara en una tabla.** Tres columnas: qué contestó cada una a la pregunta de futuro, qué
   a la de pasado, y qué te da cada versión.

|  | Pregunta de futuro | Pregunta de pasado |
|---|---|---|
| **Persona** | {el sí de cortesía} | {lo que de verdad hizo, con cita} |
| **Contra-persona** | {el mismo sí} | {lo que de verdad hizo, con cita} |
| **Qué te da** | Un sí que confirma lo que ya ibas a hacer | Dos caminos distintos, y a menudo ninguno es el plan que traías |

**El paso 6 es el que produce el hallazgo.** En la prueba del kit, la pregunta de futuro
confirmó el plan de la usuaria (publicar precios en la web) y la de pasado lo desmontó: una de
las dos personas ni había mirado la web, y la otra no pedía un precio, pedía **un documento de
una hoja que poder reenviar a su jefe**. Más barato, comprobable en una semana, y salido del
material.

### Y luego dilo

Cuando ejecutes el protocolo, explica al usuario qué acaba de pasar, porque va a desconfiar de
todo lo anterior y tiene razón en preguntarlo:

> "No sabes que las otras respuestas eran buenas porque yo te lo diga. Lo sabes porque las
> puedes comprobar: coges una cita, la buscas en lo que pegaste, y aparece literal o no
> aparece. El pie de fuente **no evita el invento: lo hace visible.** Que se haya podido cazar
> es exactamente para lo que está."

---

## Dosificación: que el pie se siga leyendo

Un pie correcto que nadie lee no protege a nadie. A partir de la cuarta o quinta respuesta,
tres citas largas con fecha por turno se vuelven ruido visual y el usuario empieza a
saltárselas.

- **El ⚠️ nunca se abrevia.** Entero, solo, y sin nada que le quite protagonismo.
- **El 📌 sí**, a partir de la tercera respuesta: solo el trozo de cita que sostiene la frase,
  más una referencia corta — `Cliente A · 12 jun`. La cita completa ya está en el expediente y
  en el entregable.
- **Un pie por respuesta.** La segunda fuente, en una línea: `también en: Contacto C · 26 jun`.
- **Vuelve al pie completo** cuando la respuesta sostenga un hallazgo nuevo, cuando el usuario
  vaya a decidir algo con ella, o cuando la pida para una reunión.

---

## Lo que esta vacuna NO arregla

Dilo cuando presentes el expediente:

- **No convierte una persona sintética en investigación de clientes.** Sigue siendo un modelo
  hablando a partir de un texto que le has dado. Hablar con tres clientes reales media hora
  sigue valiendo más.
- **No corrige el sesgo del material.** Si tus reseñas son de tus fans, la persona será una fan
  bien documentada.
- **No predice comportamiento.** Sirve para entender lo que la gente dijo, no lo que va a hacer.
- **No sustituye un test.** Lo que salga de aquí son hipótesis para probar en algo pequeño, no
  conclusiones para gastar el presupuesto del trimestre.

---

## Fuentes

- Paglieri, D., Cross, L., Cunningham, W. A., Leibo, J. Z. y Vezhnevets, A. S. (2026).
  *Persona Generators: Generating Diverse Synthetic Personas for Arbitrary Contexts.*
  arXiv:2602.03545. https://arxiv.org/abs/2602.03545
- Kumar, H., Vold, K., Tay, L. y Anderson, A. (2026). *Diagnosing and Repairing Persona
  Collapse in LLM Advice.* arXiv:2607.08326. https://arxiv.org/abs/2607.08326

Los dos son preprints de arXiv (publicados sin revisión por pares previa). Se citan porque
miden algo concreto y publican cómo lo miden, no como verdad revelada.
