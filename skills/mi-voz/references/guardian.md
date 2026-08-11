# El guardián de voz

## Lo primero: qué NO es esto

**El guardián no es un detector de IA.** Y un detector de IA no es una prueba de autoría —
conviene decirlo antes que nada porque medio internet vive de venderlos:

- OpenAI retiró el suyo el **20 de julio de 2023** "debido a su baja tasa de precisión"
  (*"the AI classifier is no longer available due to its low rate of accuracy"*).
- Los estudios académicos encuentran falsos positivos altos y un sesgo documentado contra
  quien no escribe en su lengua materna: un texto humano perfectamente normal sale marcado
  como IA. Fuente y detalle en `fuentes.md`.

Traducción práctica: **si pasas un texto tuyo por un detector, puede decirte que lo ha
escrito una máquina.** No sirven como prueba de quién escribió qué: ni para acusar a nadie,
ni para validarte a ti. No los uses como validación.

Lo que hace el guardián es otra cosa, mucho más aburrida y mucho más útil:

> Comparar el texto contra **el manual de voz de esta persona concreta** y contra los hechos
> de su negocio, y decir dónde no encaja **citando la línea exacta**.

No pregunta "¿esto suena a IA?". Pregunta "¿esto se parece a lo que tú escribes, hay algo
aquí que solo puedas decir tú, y tienes derecho a decirlo?".

---

## Cómo se ejecuta

**En Claude Code:** lánzalo como un subagente —una copia de Claude con su propio contexto,
que solo ve el manual de voz y el texto a juzgar, no la conversación en la que se escribió—.
Eso importa: quien ha escrito el texto tiende a defenderlo.

**En Claude.ai:** en un mensaje aparte, cambiando de papel de forma explícita:

> "Ahora dejo de escribir y paso a criticar. Voy a olvidarme de que este texto lo he
> redactado yo y lo voy a juzgar contra tu manual de voz, línea a línea."

No es lo mismo que un subagente de verdad, pero funciona bastante bien si el cambio de papel
se anuncia y el juicio se hace **citando el manual**, no de memoria.

---

## Los cuatro filtros

El texto tiene que pasar los cuatro. Basta con fallar uno.

### Filtro 1 — Voz

¿Se parece a lo que escribe esta persona? Se comprueba campo a campo contra el manual:

- ¿El arranque es de los suyos, o es un titular publicitario?
- ¿Hay alguna palabra de su lista negra? Ojo con esta: que una palabra **no aparezca** en el
  corpus no demuestra que no la use nunca. Es un aviso, no un veto: por sí sola no tira un
  texto, se señala y se mira si además falla algo más.
- ¿El formato encaja? (emojis, viñetas, negritas, longitud de párrafo)
- ¿El cierre es de los suyos?
- ¿El tratamiento al lector es el que corresponde a ESE canal y a ESE registro? Si el manual
  declara dos registros —empresa y persona—, se juzga contra el que toca, no contra la
  media de los dos.

### Filtro 2 — Sustancia

¿Hay aquí algo que **solo pueda decir esta persona**? Vale cualquiera de estas cinco:

1. Un nombre propio (cliente, proveedor, sitio, persona).
2. Una cifra con su origen explicado.
3. Una fecha o un momento concreto.
4. Una experiencia propia contada en primera persona.
5. Una opinión con la que alguien pueda estar en desacuerdo.

**Si no hay ninguna de las cinco, el texto falla**, por bien escrito que esté. Este es el
filtro que más rechaza y el que más valor aporta: la mayor parte de lo que "suena a IA"
suena a IA porque **no dice nada que su autor no pudiera haber copiado de otro**.

### Filtro 3 — Canal

¿Es nativo del canal, o es un post genérico con el envoltorio cambiado?

- ¿La primera frase se parece a la de otra pieza de esta misma tanda? → falla.
- ¿Lleva marcas de otro canal? (hashtags en X, "hilo" en LinkedIn, enlaces en Instagram).
- ¿Funciona sin haber leído la otra pieza?

### Filtro 4 — Autoría

**¿Tiene derecho a decir esto quien lo firma?**

Este filtro existe porque los tres primeros dan PASA y el usuario contesta *"está bien, pero
yo no lo firmaría"*. No está diciendo "no me gusta". Está diciendo **"no soy yo quien
firma"** — y en una PYME quien escribe casi nunca es quien firma.

Falla si se cumple cualquiera de estas:

- La pieza afirma **hechos que solo puede respaldar otra persona** ("dos de nuestros siete
  clientes…", "cuando alguien me pregunta yo le contesto…").
- La pieza lleva **una opinión sobre la empresa o el sector** que le corresponde a quien
  dirige, no a quien redacta.
- **Quien firma no la ha visto.** Va a su nombre, a su perfil o a su buzón.
- **El usuario dice que no la firmaría.** Aquí no se discute: **manda su "no"**.

**Y esto es lo que hay que decirle, tal cual:**

> "El guardián ha dicho PASA y tú has dicho que no. Manda tu no. Eso no es un fallo del
> guardián: es su límite. Comprueba si un texto suena a esa voz y si tiene sustancia. **No
> comprueba si tienes derecho a decirlo.** Eso es tuyo, no mío."

---

## El protocolo de autoría

### Antes de escribir — la pregunta que ahorra la reescritura

Al empezar la fase 2, una línea:

> "¿Quién firma cada pieza? ¿Va en tu perfil o en el de otra persona?"

Si firma alguien que no está en la conversación, **el filtro 4 ya está activo desde la
primera palabra** y se escribe sabiéndolo.

### Cuando el filtro 4 falla — tres salidas, y ninguna es "publícalo y ya"

| Salida | Qué es | Cuándo |
|---|---|---|
| **A · Mandarle la pieza entera** para que la apruebe o la cambie | Rápido | Casi nunca funciona: le llega un texto que él no ha pensado, la reacción natural es reescribirlo entero y suele acabar sin publicarse |
| **B · Mandarle tres preguntas** y escribir con lo que conteste | Cinco minutos de su tiempo | **La recomendada.** El contenido pasa a ser suyo de verdad y el usuario solo lo ha redactado |
| **C · Que lo firme el usuario** | Cambia la voz y a menudo el canal | Solo si su perfil también genera negocio. Dilo si no es el caso: *"tu perfil no es el canal que trae clientes; el que lo trae es el suyo"* |

### Las tres preguntas — cómo se escriben

**Tres, nunca más:** con más de tres no contesta nadie. Y las tres piden **un hecho
concreto**, no una opinión sobre el texto. "¿Te parece bien el post?" no es una pregunta
útil: devuelve una corrección de estilo. "¿Alguno de nuestros clientes había hecho esto
antes?" devuelve la primera línea de la pieza.

Ejemplo real de las pruebas del kit, con las tres preguntas que se mandaron por WhatsApp y
volvieron contestadas en cuatro minutos:

1. De los siete clientes que hemos cerrado, ¿alguno había hecho ya una formación de IA antes,
   con otro proveedor?
2. Cuando un cliente te pregunta por el Art. 4, ¿qué es lo primero que le dices?
3. ¿Has visto alguna vez un certificado de formación que no valiera para nada? ¿De qué tipo
   era?

Las tres respuestas se convirtieron en los tres datos que hacen la pieza imposible de copiar.
**Este es el sitio donde el filtro 4 y el filtro 2 se juntan:** casi siempre, lo que le falta
a un texto para tener sustancia es exactamente lo que solo sabe quien lo firma.

### El pudor, que es una cosa distinta y también real

Escribir en primera persona por otro no da apuro por el "yo". Da apuro por **afirmar algo
que no sabes si es verdad**. Dilo así:

> "Fíjate en qué es lo que te chirría. No es el estilo: es 'conté nueve', que es un hecho, y
> 'a la mía tampoco', que es una opinión sobre su empresa. Las dos las tiene que respaldar
> él. Si te trae los datos, el apuro se va solo. Ahora mismo estás firmando afirmaciones sin
> fuente, y con eso se pone nervioso cualquiera."

---

## Los tics: qué buscar cuando el texto "suena raro"

No son delitos por sí solos —**mucha gente escribe así de verdad**—. Son señales de que hay
que ir a comprobar contra el manual.

**De estructura**
- Todo va de tres en tres: "rápido, sencillo y eficaz". Tres ejemplos, tres razones, tres
  ventajas. Un texto humano tiene números feos: dos cosas, o cinco.
- La antítesis en bucle: "No es X. Es Y." repetida cada tres párrafos.
- Todas las frases miden lo mismo. Un ritmo humano es irregular.
- La escalera final: cada párrafo un poco más épico que el anterior.

**De vocabulario (en español)**
- "En un mundo donde…", "En el vertiginoso mundo de…", "En la era de…"
- "No se trata solo de X, sino de Y"
- "desbloquea", "potencia", "eleva", "transforma", "empodera", "revoluciona"
- "clave", "fundamental", "esencial", "crucial" como muletilla de adjetivo
- "la digitalización ya no es una opción, es una necesidad"
- "Espero que esto te sirva", "¿Y tú, qué opinas?"

**De contenido** — estos son los graves:
- Cero nombres propios en todo el texto.
- Cifras sin fuente, o peor: "una parte significativa", "muchos expertos coinciden".
- Ninguna afirmación que pueda molestar a nadie.
- Una conclusión con la que es imposible estar en desacuerdo.

---

## El tic que resulta ser la firma de la casa

**Esto pasa, pasa a menudo, y es el momento más didáctico de toda la skill.**

Caso real de las pruebas del kit: la antítesis *"No es X, es Y"* está en la lista de arriba
como señal de texto de máquina. En la web de la empresa analizada aparecía **18 veces en
3.500 palabras** — escritas por personas, y era lo más reconocible que tenían. *"El proyecto
se cierra por autonomía, no por fecha."* *"Producción, no demos."* No es un tic: es la forma
en la que piensan, aplicada a la sintaxis.

Si el guardián rechaza ahí, rechaza a la persona por ser ella misma.

### El protocolo, en cuatro pasos

Cuando detectes un rasgo de la lista de tics, **no lo marques como fallo todavía**:

1. **Ve al manual.** ¿Está documentado ese rasgo, con citas?
2. **Si el manual lo documenta → no es un tic, es su firma.** No se rechaza. Se comprueba la
   dosis (paso 3).
3. **Compara la densidad, no la presencia.** El manual registra cuántas veces aparece por
   cuántas palabras del corpus. La pieza nueva tiene que estar **en el mismo orden de
   magnitud**, no en la misma cifra exacta:
   - Corpus: 18 apariciones en 3.500 palabras → **una cada ~190 palabras**.
   - Pieza nueva de 170 palabras → tocaría alrededor de una. Dos está dentro.
   - Seis en 170 palabras **no** está dentro: eso ya no es su voz, es una imitación de su
     voz. Y una imitación se nota más que una ausencia.
   - Cero en una pieza larga tampoco encaja: si el rasgo aparece en 4 de 5 piezas del
     corpus y en el texto nuevo no está, falta algo suyo.
4. **Si el manual NO lo documenta y el rasgo aparece en el texto nuevo → sí es una señal.**
   Ahí el tic no viene de la persona: viene del modelo. Se señala como fallo del filtro 1,
   citando el campo del manual que se incumple.

### La consecuencia para la fase 1

Para que este protocolo se pueda ejecutar, **el manual tiene que traer el número**. Cuando un
rasgo estructural sea una firma, no basta con escribir "usa mucho la antítesis": hay que
escribir *"18 apariciones en 3.500 palabras, una cada ~190"*. Está en la plantilla de
`manual-de-voz.md`, campo *Tus muletillas*.

Un tic no es un delito. Es una señal para ir a comprobar.

---

## El veredicto

Cuatro salidas, y hay que elegir una. "Está bastante bien pero…" no es un veredicto.

| Veredicto | Cuándo | Qué se hace |
|---|---|---|
| **PASA** | Los cuatro filtros limpios | Se entrega |
| **FIRMA** | Los tres primeros limpios, falla el 4 | Se entrega **con las tres preguntas escritas** para quien firma. No se publica hasta que conteste |
| **REESCRIBE** | Falla el filtro 1 o el 3, pero la sustancia está | Se arregla lo señalado |
| **TIRA** | Falla el filtro 2 | Se vuelve a la idea, no al texto |

**Cuando falla la sustancia no se reescribe.** Si no hay nada propio dentro, reescribirlo
solo lo disfraza mejor. Hay que volver a la idea y buscar el dato, el nombre o la opinión
que faltaba — y muchas veces eso significa preguntarle algo a alguien.

**FIRMA no es un rechazo.** El texto está bien: lo que falta es un permiso, y el permiso no
lo da un modelo. Entrégalo entero, con las preguntas debajo, listas para copiar y mandar.

## Cómo se escribe el veredicto

Una regla y solo una: **cada objeción cita la línea exacta y el campo del manual que
incumple.**

```
❌ "El tono no acaba de encajar con tu voz."
✅ "«Descubre cómo optimizar la gestión de tu equipo» — 'optimizar' no aparece ni una vez
   en tus 12 piezas, y en /mi-marca dijiste que nunca dirías 'optimización de recursos
   humanos'."
```

Si no puedes citar la línea, no es una objeción: es una sensación. Guárdatela.

**Y di siempre qué filtro estuvo más justo**, aunque el veredicto sea PASA. Si el manual
tenía `Sin evidencia suficiente` en el registro de ese canal, el veredicto vale menos que el
de una pieza comparada contra muestras reales — y eso se dice al entregar, no se esconde.

---

## El límite de dos reescrituras

Máximo **dos** vueltas. Si a la tercera sigue sin pasar, se para y se le dice al usuario:

> "Llevamos tres intentos y sigue sin sonar a ti. No creo que el problema sea la redacción:
> creo que esta idea todavía no es tuya. ¿Qué te pasó a ti con esto? Cuéntamelo como se lo
> contarías a alguien en un bar y lo escribo con eso."

Es incómodo y es el momento en que la skill hace su trabajo. Una fábrica de contenido que
nunca para es una fábrica de ruido.

**Las vueltas de FIRMA no cuentan.** Esperar la respuesta de quien firma y reescribir con
sus datos no es un intento fallido: es el mecanismo funcionando.

---

## Lo que el guardián no puede hacer

Dilo cuando entregues, no lo escondas. Y el primero va primero por algo:

- **No comprueba que lo que dices sea verdad.** Un dato inventado con tu tono exacto pasa los
  filtros sin despeinarse. **PASA no significa publicable: significa que suena a ti.**
  Los nombres, las cifras y las fechas los verificas tú contra la fuente antes de publicar.
- **No da el permiso.** El filtro 4 detecta que falta, no lo concede. Eso lo firma una
  persona.
- **No garantiza que un lector no piense que lo ha escrito una IA.** Eso no se puede medir y
  quien te diga lo contrario te está vendiendo un detector.
- **No juzga si la pieza va a funcionar.** Sonar a ti y funcionar son dos cosas distintas.
- **No mejora tu voz.** Si tu voz publicada es aburrida, el guardián defiende que sigas
  siendo aburrido con precisión. Cambiar de voz es una decisión tuya, y se hace publicando
  distinto durante meses, no en un chat.
- **No decide el mecanismo.** Un botón, un formulario o una pregunta de cierre **no son
  violaciones de voz**: ver el bloque *"Dónde acaba este manual"* en `manual-de-voz.md`.
  Si rechazas una landing por llevar un botón, el guardián se ha convertido en el problema.
