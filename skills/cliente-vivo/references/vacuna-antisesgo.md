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

> "Our experiments show that simply asking an LLM to «generate diverse personas» typically
> yields populations clustered around stereotypical responses, failing to cover extreme or
> unusual trait combinations."

*(Traducción propia: el prompt ingenuo produce colapso de modo, salidas estereotípicas y
sesgos sistemáticos, en parte como subproducto del entrenamiento por refuerzo con feedback
humano, incluso cuando se dan instrucciones explícitas de diversidad. Pedirle "genera
personas diversas" produce poblaciones agrupadas en torno a respuestas estereotípicas.)*

El mismo trabajo describe qué aspecto tiene ese colapso en la práctica. En un escenario de
conflicto —un accidente de coche— las personas sintéticas de referencia:

> "…default to being highly conflict-averse, polite, and collaborative, **even when their
> car is badly damaged by a distracted driver**."

Ese es el cliente que te vas a construir por defecto: educado, colaborativo y de acuerdo
contigo aunque le acaben de destrozar el coche.

En números: en su evaluación, el generador optimizado alcanza una cobertura de **0,82** en
el conjunto de prueba, mientras que la línea base construida pidiéndole diversidad a un
modelo puntero se queda en **0,65**, y la más simple en **0,44**. Nadie llega al 1. La
diversidad completa no se consigue pidiéndola.

### 2. Y pedirle que elija bien el personaje, tampoco

Kumar, Vold, Tay y Anderson, **"Diagnosing and Repairing Persona Collapse in LLM Advice"**,
arXiv:2607.08326, 9 de julio de 2026:

> "Across 1,281 advice posts spanning 14 contexts, top-rated human responses shift
> systematically across five personas, while three frontier models **collapse over 90% of
> responses into a single supportive persona regardless of context**. Prompting the model to
> first pick a fitting persona only deepens the collapse."

*(Traducción propia: en 1.281 consultas de consejo repartidas en 14 contextos, las mejores
respuestas humanas se reparten entre cinco personajes distintos, mientras que tres modelos
punteros colapsan más del 90 % de sus respuestas en un único personaje de apoyo, sea cual
sea el contexto. Y pedirle al modelo que elija primero el personaje adecuado solo agrava el
colapso.)*

Traducido a marketing: **el personaje por defecto es "el que te apoya"**. Si le preguntas a
tu cliente sintético si tu idea le parece buena, la respuesta ya estaba escrita antes de que
preguntaras.

> **Cómo contarlo sin exagerar.** Estos dos trabajos miden poblaciones sintéticas y consejo
> personal, no específicamente buyer personas de marketing. La conclusión que se puede
> sostener es que **la tendencia al personaje complaciente y promedio está documentada y no
> se arregla pidiendo lo contrario**. Lo que hacemos aquí son contramedidas prácticas, no una
> solución al problema.

---

## Las tres contramedidas

### 1. Citas textuales, no resúmenes

Un resumen ya está limpio, ordenado y en un castellano correcto que nadie habla. Es material
promedio, y con material promedio sale una persona promedio.

**Qué hacer:**
- Pide el copia-pega crudo: muletillas, frases a medias, faltas, tacos, mayúsculas.
- No corrijas las citas al meterlas en el expediente. "Es que no sé ni cuánto es en total"
  se queda tal cual; no se convierte en "manifiesta incertidumbre sobre el importe final".
- Prioriza las frases **raras**. Si alguien dice algo que no encaja con el resto, no es
  ruido: es la parte del mercado que tu competencia no está viendo.

**Cómo se nota que funciona:** la persona empieza a usar expresiones que tú no habrías
escrito.

### 2. El pie de fuente en todas las respuestas

Cada respuesta de la persona termina con uno de estos dos, sin excepción:

```
📌 Fuente: "cita textual" — dónde, fecha
⚠️ Sin respaldo: no hay nada en el material que sostenga esto.
```

Es la contramedida más barata que existe y la que más inventos caza, porque obliga a hacer
explícito algo que normalmente queda escondido: de dónde ha salido esa frase.

**Reglas de uso:**
- Si la cita no existe **literal** en el material, el pie es ⚠️. Aunque la idea sea
  razonable. Aunque casi lo diga.
- Si hay que juntar dos citas para responder, se ponen las dos.
- **Poner ⚠️ no es fracasar.** Un expediente con muchos ⚠️ te está diciendo dónde te falta
  material, que es información útil y gratis.

### 3. La contra-persona

Monta siempre una segunda persona hecha del material opuesto: quien no compró, quien se dio
de baja, quien eligió a otro, quien puso 1 estrella.

**Cómo se construye bien:**
- Con **sus propias citas**, no con las de la primera en negativo. Si la contra-persona no
  tiene material propio, no existe: dilo en vez de fabricarla.
- Las preguntas importantes se hacen **a las dos**, en el mismo orden.

**Cómo se lee el resultado:**

| Lo que ves | Qué significa |
|---|---|
| Responden distinto, con citas distintas | Bien. Tienes dos voces reales |
| Responden parecido con otras palabras | Colapso. Vuelve al material y mete citas más crudas |
| La contra-persona termina dándote la razón | Colapso avanzado. Revisa si su material es de verdad de gente que no compró |

---

## Señales de alarma

Si ves alguna de estas, para y avisa al usuario. No sigas la conversación como si nada.

- La persona **está de acuerdo con todo** lo que propone el usuario.
- Usa un castellano más pulido que el del material de origen.
- Contesta preguntas sobre el futuro ("¿comprarías si…?") con seguridad.
- Da un porcentaje o una cifra que no está en el material ("un 70 % de la gente como yo…").
- Se disculpa mucho, matiza mucho y no dice nada incómodo.
- Cambia de opinión en cuanto el usuario la contradice. **Esta es la peor de todas**: quiere
  decir que ya no queda material debajo, solo educación.

**Qué decir cuando pasa:**

> "Para un segundo. Llevo tres respuestas dándote la razón y eso no es buena señal: es
> justo el fallo que esta skill intenta evitar. Vamos a comprobarlo — hazle esta misma
> pregunta a la contra-persona, y si también te da la razón, el problema es que me falta
> material crudo, no que tengas razón."

---

## Lo que esta vacuna NO arregla

Dilo cuando presentes el expediente:

- **No convierte una persona sintética en investigación de clientes.** Sigue siendo un
  modelo hablando a partir de un texto que le has dado. Hablar con tres clientes reales
  media hora sigue valiendo más.
- **No corrige el sesgo del material.** Si tus reseñas son de tus fans, la persona será una
  fan bien documentada.
- **No predice comportamiento.** Sirve para entender lo que la gente dijo, no para saber lo
  que va a hacer.
- **No sustituye un test.** Lo que salga de aquí son hipótesis para probar en una campaña
  pequeña, no conclusiones para gastar el presupuesto del trimestre.

---

## Fuentes

- Paglieri, D., Cross, L., Cunningham, W. A., Leibo, J. Z. y Vezhnevets, A. S. (2026).
  *Persona Generators: Generating Diverse Synthetic Personas for Arbitrary Contexts.*
  arXiv:2602.03545. https://arxiv.org/abs/2602.03545
- Kumar, H., Vold, K., Tay, L. y Anderson, A. (2026). *Diagnosing and Repairing Persona
  Collapse in LLM Advice.* arXiv:2607.08326. https://arxiv.org/abs/2607.08326

Los dos son preprints de arXiv (publicados sin revisión por pares previa). Se citan porque
miden algo concreto y publican cómo lo miden, no como verdad revelada.
