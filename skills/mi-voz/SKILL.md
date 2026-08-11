---
name: mi-voz
description: Saca tu voz real leyendo lo que ya tienes publicado —tu web entera, tu newsletter, tus vídeos— y la escribe en un manual de voz comprobable línea a línea. Después escribe contenido nativo para cada canal y lo pasa por un guardián que rechaza lo que no suena a ti y lo que no puedes firmar. Para publicar con IA sin dejar de sonar a ti.
---

# /mi-voz — Una fábrica de contenido con un guardián en la puerta

Lo que se enseña normalmente es esto: *una idea → cinco piezas*. Escribes un post, le pides
a la IA que lo adapte a LinkedIn, a X, a Instagram y a la newsletter, y publicas.

Eso no es producir en cinco canales. Es **publicar lo mismo cinco veces**, con el tono de
nadie.

Esta skill hace tres cosas, en este orden, y el orden importa:

1. **Saca tu voz de tus textos ya publicados** —los busco y los leo yo— y la escribe en un
   documento comprobable línea a línea: `manual-de-voz.md`, que reutiliza el resto del kit.
2. **Escribe cada pieza desde cero en su canal**, no traduce una pieza a las demás.
3. **Pone un guardián en la puerta** que rechaza lo que no suena a ti — y lo que no puedes
   firmar. Una fábrica sin guardián es una fábrica de ruido.

**Disparadores:** "/mi-voz", "escribe como yo", "extrae mi voz", "manual de voz", "clona mi
estilo", "que no suene a IA", "esto no suena a mí", "contenido para LinkedIn e Instagram",
"adapta este post a todos los canales", "hazme contenido para esta semana", "revisa si esto
suena a IA".

> **Cómo se llama esta skill.** En **Claude Code** y **Cowork**: `/mi-voz`.
> En **Claude.ai** no hay comandos con barra — pídelo con palabras y se activa
> sola; si no la coge, nómbrala: *"usa la skill mi-voz"*.

---

## Antes de empezar

**Busca el perfil antes de saludar.** El protocolo completo está en
`references/_arranque.md` y vale tal cual: el fichero se llama **`perfil-marca.md`**, y no
se pregunta por él — se busca.

Luego mira en cuál de estas dos situaciones estás. No son la misma conversación:

**A · Vienes de `/mi-marca`, en la misma sesión.** No te vuelvas a presentar y no repitas
una sola pregunta. Ya tienes negocio, cliente, canales, colores y objetivo. Enlaza y sigue:

> "Seguimos. Con el perfil hecho ya sé qué vendes y dónde publicas. Ahora vamos a por cómo
> escribes, que es la mitad que hace que esto no suene a IA. Empiezo leyendo tu web — no
> tienes que pegarme nada."

**B · Abres `/mi-voz` en una clase nueva, sin nada delante.** Busca el perfil. Si lo hay,
resúmelo en dos líneas y arranca (rama A de `_arranque.md`). Si no lo hay, **no mandes al
usuario a ejecutar `/mi-marca` primero**: está en una clase y quiere hacer *esta*. Modo
exprés de tres preguntas (rama B) y adelante.

**Esta skill sobrevive sin perfil mejor que ninguna otra del kit, y conviene decirlo.** El
90 % del manual sale del corpus, no del perfil. Sin perfil solo se pierden tres cosas —la
sublista DECLARADO de "palabras que jamás usas", los canales ya decididos y sus colores para
el HTML— y las tres caben en una pregunta al final.

**Informes de otras skills: se leen, no se piden.** Si en la carpeta hay algo de `/el-hueco`
(competidores con nombre, quejas reales) o de `/cliente-vivo` (las palabras exactas de sus
clientes), ábrelo: es munición directa para el filtro 2 del guardián. Si no están, **no los
pidas ni los eches de menos en voz alta**: la skill funciona igual, solo que encontrar el
dato propio de cada pieza te costará una pregunta más.

### Los tres avisos que se dan antes de la fase 1

Quince segundos, y evitan las tres frustraciones más comunes de esta skill.

**1. Cuánto dura de verdad.** No prometas quince minutos:

> "Te digo los tiempos reales. El manual de voz sale en unos **veinte minutos**. Cada pieza
> de contenido, con guardián y reescrituras, son otros **diez o quince**. Si hacemos las dos
> cosas, esto es **cerca de una hora**. Podemos parar después del manual y dejar las piezas
> para otro día: el manual es lo que se hace una vez, las piezas se hacen siempre."

**2. Si tiene poco publicado, dilo tú antes de que lo descubra él.** Es la frustración nº 1
y se desactiva con dos frases dichas *antes* de leer nada:

> "Si resulta que tienes poco publicado, el manual va a salir con la mitad de los campos
> vacíos. **Eso no es un fallo tuyo ni mío: es que todavía no tienes voz publicada.** Se
> marca, se dice cuántas piezas he podido leer, y con lo que haya se trabaja igual."

**3. Qué no pegar.** Solo cuando toque pedirle material privado: nada de DMs, nombres de
clientes que no estén publicados, precios que no sean públicos ni textos de terceros. Se
queda en la conversación.

---

## Fase 1 — Sacar la voz

### El corpus se busca solo

**Nunca le pidas al usuario un texto que esté publicado.** Protocolo general en
`references/_investigar.md`, el de esta skill en **`references/corpus.md`**. En una línea:

> Con la URL de su web, **lees el sitio entero** (Firecrawl `map` + `scrape`, o lectura web
> nativa) y de ahí sale el corpus. Solo se pide lo que no es público: campañas de newsletter
> sin archivo público, notas de voz, WhatsApp a clientes, Instagram y LinkedIn.

Y cuando toque pedir, va **todo junto y una sola vez**. `corpus.md` trae el mensaje escrito
y el camino de clics.

**Tres cosas que no se saltan nunca:**

- **Di cuántas piezas has leído y de dónde. Y qué NO has encontrado:** que no hay blog, que
  el archivo de la newsletter no es público, que LinkedIn ha bloqueado. Va en la cabecera del
  manual y en el diario de investigación del HTML.
- **Cuenta piezas, no palabras.** Cuatro páginas escritas la misma tarde por la misma cabeza
  son cuatro muestras de un mismo momento, no cuarenta. Y un pie replicado cuenta **uno**.
- **Pregunta si alguno se escribió con IA:** *"¿alguno de estos lo escribiste con ayuda de
  IA?"*. Tres palabras que salvan la sesión entera — extraerle la voz a los textos de ChatGPT
  es cómo se queda alguien atrapado sonando a ChatGPT para siempre. Los que sí, se apartan
  del corpus y se guardan como **contraejemplo**, que es donde más valen.

### Escribir el manual

Lee el corpus entero antes de escribir una sola conclusión. Luego rellena la plantilla de
**`references/manual-de-voz.md`**, que trae los campos, los umbrales y el bloque de cierre
obligatorio. La regla que gobierna esta fase, y no tiene excepciones:

> **Cada campo va con citas literales del corpus.** Si un campo no tiene cita, se escribe
> `Sin evidencia suficiente` y se dice por qué.

"Tono cercano y directo" no es un campo: es lo que pone un manual de agencia y **no se puede
comprobar**. "Empiezas con una escena y una hora: «Domingo, 21:40.» (pieza 1)" sí. El
guardián de la fase 3 no puede rechazar nada con lo primero.

**Dos hallazgos que hay que decir en voz alta, aunque incomoden:** con **cuántas piezas** has
trabajado —menos de 6 y el manual es una hipótesis, y así se llama en su primera línea—; y
**si en todo el corpus no hay ni una frase con la que alguien pudiera estar en desacuerdo**.
Eso último es lo más importante que puedes darle: *"tu contenido es correcto y no es tuyo"*.
No lo suavices.

### Dos voces en un solo manual

Pasa casi siempre en una empresa: el corpus es web corporativa en "nosotros" y el canal de
destino es el perfil personal de alguien. **Son dos voces y no se promedian**, porque el
promedio es una voz que no tiene nadie.

Se resuelve con **una pregunta al empezar la fase 1**, no con una entrevista:

> "¿Lo que quieres sacar es la voz de la empresa, la tuya, o las dos? Te lo pregunto porque
> tu web habla en plural y en LinkedIn vas a publicar en primera persona."

Con **3 o más piezas de cada voz** → un manual con **dos registros declarados**, y el
guardián juzga cada pieza contra el suyo. Con **1 o 2 piezas de una de ellas** → se elige la
documentada y se declara que la otra va por analogía. Las dos salidas están desarrolladas en
`references/manual-de-voz.md`. En los dos casos, quien firma se decide **por canal** — y eso
es el filtro 4 del guardián.

### Dónde se guarda

**Nombre fijo, sin fecha y sin prefijo: `manual-de-voz.md`**, junto a `perfil-marca.md`. En
Claude Code lo guardas tú; en Claude.ai lo pega él en las instrucciones del Proyecto, y
**ahora**, no "cuando pueda". Las skills de contenido lo buscan con ese nombre exacto: si se
guarda como `04-manual-y-piezas.md`, no lo encuentra nadie y el trabajo de hoy se pierde.

---

## Fase 2 — Escribir nativo, canal por canal

"Nativo" quiere decir escrito **para ese sitio**, no traído de otro. El detalle de cada
canal está en **`references/canales.md`**.

**Antes de escribir, dos líneas y ni una pregunta más:**

1. **Confirma los canales, no los abras a debate.** Están en el perfil (`Dónde vivo`): *"voy
   a escribir para LinkedIn y para tu newsletter, que son los dos que usas, ¿vamos?"*. Si no
   hay perfil, pregúntalos una vez. Si pide cinco, di *"menos canales bien que cinco mal"* y
   luego hazlo igual.
2. **Pregunta quién firma cada canal.** *"¿El post lo firma tu perfil o el de otra persona?"*
   Una línea ahora ahorra la reescritura entera después.

Y coge del perfil **el objetivo a 90 días**: no se escribe igual para que te conozcan que
para llenar cuatro reuniones al mes. Eso decide el cierre, no el tono.

El orden de trabajo es este, y el paso 3 es el que hace todo el trabajo:

1. **Decide en qué canal vive mejor la idea.** No todas las ideas merecen todos los canales.
2. **Escribe esa pieza entera**, con el manual de voz delante, y **pásala por el guardián
   antes de escribir la segunda.**
3. **Para el segundo canal, vuelve a la idea original — no a la pieza que acabas de
   escribir.** Si partes del texto de LinkedIn, vas a producir una traducción del texto de
   LinkedIn.
4. **Compara las primeras frases.** Si se parecen, tira la segunda y empieza de nuevo.

> **La regla de la primera frase:** dos piezas de la misma tanda no pueden empezar igual ni
> parecido. Es la comprobación más rápida que existe para saber si has escrito dos cosas o
> una maquillada.

**Si el canal no tiene ni una muestra en el corpus** —lo normal, no la excepción—: se escribe
con el registro que sí esté documentado y **se dice al entregar** que ese veredicto vale
menos, porque no se está comparando contra muestras de ese canal. Protocolo en `canales.md`.
Lo que no se hace es inventar cómo escribiría en Instagram alguien que solo ha escrito en
LinkedIn.

---

## Fase 3 — El guardián

Ahora dejas de escribir y pasas a criticar. La rúbrica completa está en
**`references/guardian.md`**. Lo esencial:

**Cómo se ejecuta.** En Claude Code, como **subagente**: una copia de Claude que solo ve el
manual y el texto, no la conversación donde se escribió. En Claude.ai no hay subagentes —
cambia de papel en voz alta: *"ahora dejo de escribir y paso a criticar; me olvido de que
esto lo he redactado yo"*.

**Los cuatro filtros.** Basta fallar uno:

| Filtro | La pregunta | Falla si… |
|---|---|---|
| **1 · Voz** | ¿Se parece a lo que escribe esta persona? | Arranque, muletillas, formato o cierre no encajan con el manual |
| **2 · Sustancia** | ¿Hay algo aquí que **solo** pueda decir él? | No hay ningún nombre propio, cifra con origen, fecha, experiencia en primera persona ni opinión discutible |
| **3 · Canal** | ¿Es nativo, o genérico con otro envoltorio? | Comparte primera frase con otra pieza, o lleva marcas de otro canal |
| **4 · Autoría** | ¿Tiene **derecho** a decir esto quien lo firma? | La pieza afirma hechos que solo puede respaldar otra persona, o quien firma no la ha visto |

**El filtro 4 es el que más se nota en una empresa.** Los tres primeros dan PASA y el usuario
contesta *"está bien, pero yo no lo firmaría"*. No está diciendo que no le guste: está
diciendo que **no es él quien firma**, y en una PYME quien escribe casi nunca es quien firma.
Cuando pase, **manda su "no"** — no es un fallo del guardián, es su límite. `guardian.md`
trae el protocolo: las tres salidas y las tres preguntas que se le mandan a quien firma.

**El veredicto es uno de cuatro.** "Está bastante bien, pero…" no es un veredicto.

- **PASA** → los cuatro limpios. Se entrega.
- **FIRMA** → los tres primeros limpios, el 4 no. Se entrega **con las preguntas escritas
  para quien firma**, y no se publica hasta que conteste.
- **REESCRIBE** → falla el 1 o el 3, pero la sustancia está. Se arregla lo señalado.
- **TIRA** → falla el 2. **No se reescribe**: se vuelve a la idea. Si no hay nada propio
  dentro, reescribirlo solo lo disfraza mejor.

**Cada objeción cita la línea exacta y el campo del manual que incumple.** Si no puedes
citar la línea, no es una objeción: es una sensación, y te la guardas.

**Un tic no es un delito.** Si el texto tiene una estructura de la lista de tics —la antítesis
"No es X, es Y", el todo de tres en tres— **ve al manual antes de rechazar**. Si el manual
documenta ese rasgo con citas, no es un tic: es su firma, y se mide por densidad. El
protocolo escrito está en `guardian.md` y es la mejor lección de todo el kit.

**Máximo dos reescrituras.** A la tercera se para y se dice la verdad:

> "Llevamos tres intentos y sigue sin sonar a ti. No creo que el problema sea la redacción:
> creo que esta idea todavía no es tuya. ¿Qué te pasó a ti con esto? Cuéntamelo como se lo
> contarías a alguien en un bar y lo escribo con eso."

---

## Lo que entregas

**Tres cosas:** **`manual-de-voz.md`** —nombre fijo, junto a `perfil-marca.md`, es lo que
leen las demás skills y solo se hace la primera vez—, **las piezas** en el chat con su
veredicto, y **el HTML con sus colores**, siguiendo `references/_entregable.md`, **al final**
y después de confirmar las conclusiones en el chat. Nunca antes.

El HTML lleva el manual resumido, las piezas aprobadas, **las rechazadas con su motivo**, el
diario de investigación y el test de la mentira. Los colores salen del perfil
(`## Mi identidad visual`); si no están, de su web; si no hay web, se preguntan dos colores.

**El diario de investigación de esta skill** es el que más impresiona, porque enseña lectura
real: qué páginas se leyeron y cuántas palabras tenían, qué no existía (blog, archivo de
newsletter), qué bloqueó (LinkedIn) y qué piezas se descartaron y por qué (escrita con IA,
pie de página replicado).

**Las piezas se entregan en este orden:** la idea en una línea y de dónde salió · los canales
elegidos y los descartados · cada pieza entera, con **quién la firma** y el veredicto · y
**lo que se ha rechazado por el camino**, con el motivo y la línea señalada.

### Cuatro reglas que no se negocian

**1. Todo lo que dice el manual de voz sale del corpus.** Ni una inferencia elegante sobre
"su personalidad de marca". Si no está escrito en una de sus piezas, no está en el manual.

**2. Las piezas rechazadas se entregan.** Con el motivo y la línea señalada. Es la parte del
entregable que hace que el usuario aprenda a rechazar solo.

**3. El guardián no negocia con el filtro 2.** Un texto sin nada propio dentro no se
reescribe por muy bien que suene. Ese es exactamente el contenido que la gente reconoce como
hecho por una máquina, y el que más caro sale publicar.

**4. El manual gobierna el tono, no el mecanismo.** Un botón, un formulario o una pregunta
de cierre **no son violaciones de voz**. Esto va escrito dentro del manual, en el bloque
*"Dónde acaba este manual"* — es obligatorio y está en `references/manual-de-voz.md`. Sin
él, este manual bloquea todo lo que produzcan las demás skills del kit.

---

## Al terminar

**Si has descubierto algo que contradice el perfil, escríbelo en el perfil.** En la sección
`## Correcciones` de `perfil-marca.md`, una línea con fecha y skill:

> `- **2026-08-11 · /mi-voz:** el perfil declaraba "usted en el primer contacto". La web
> tutea en las cuatro páginas. Manda lo publicado: el trato es "tú".`

Ese caso es real y salió en las pruebas del kit. Si no se apunta, la siguiente skill —en
otra clase, otro día— vuelve a escribir de usted.

**Cierra separando lo suyo de lo que depende de otro.** Lo que puede hacer hoy él solo
—publicar lo que firma, guardar el manual, guardar el correo que mande para el próximo
corpus— y lo que necesita el OK de alguien más, **con el mensaje ya escrito**: las piezas que
firma otra persona van con sus tres preguntas debajo, y los datos que solo esa persona conoce
se confirman antes de publicar, no después.

**Y deja dicho cómo crece el manual**, porque la pregunta *"¿tengo que esperar diez meses a
publicar diez posts?"* llega siempre. No: crece con corpus que ya existe y nadie había
contado —campañas de email enviadas, notas internas, documentos de trabajo, WhatsApp a
clientes— y con cada pieza nueva. La de hoy ya es la primera.

---

## 🔍 Test de la mentira

Tres comprobaciones, en voz alta y delante del usuario. Las tres las puede hacer él solo,
ahora mismo:

1. **Busca una muletilla del manual en tus textos originales.** Ctrl+F, la palabra literal.
   Si no aparece **al menos tres veces**, el manual se la ha inventado — y todo lo que salga
   de ahí va a sonar a un personaje que no eres. Enséñale también una que **no** entró por
   quedarse en dos: así ve el umbral funcionando.
2. **Compara la primera frase de las dos piezas.** Si dicen lo mismo con casi las mismas
   palabras, no has producido para dos canales: has copiado y pegado con retoques.
3. **Busca en cada pieza un nombre, una cifra con origen, una fecha o una opinión que solo
   puedas decir tú.** Si no hay ninguna, da igual lo bien que suene: la podría haber escrito
   cualquiera. Y eso es justo lo que la gente reconoce como texto de máquina.

**Lo que este test NO comprueba** —dilo, porque importa—:

- **Que lo que dices sea verdad.** Un dato inventado con tu tono exacto pasa los filtros.
  **PASA no significa publicable: significa que suena a ti.** Los nombres, las cifras y las
  fechas los verificas tú contra la fuente antes de publicar. Este es el límite más
  importante de los cuatro.
- **Que tengas permiso para decirlo.** El filtro 4 lo pregunta, pero quien lo contesta es
  una persona, no el guardián.
- **Que la pieza vaya a funcionar.** Sonar a ti y funcionar son cosas distintas.
- **Que un lector no vaya a pensar que lo escribió una IA.** Eso **no se puede medir**, y los
  detectores no valen como prueba (ver abajo).
- **Que la voz extraída sea la que te conviene tener.** Si tu voz publicada es aburrida, este
  método defiende que sigas siendo aburrido con precisión. Cambiarla es una decisión tuya y
  se toma publicando distinto durante meses, no en un chat.

> Si solo hay tiempo para una, que sea la tercera.

### Y un aviso que hay que dar sin que lo pidan

**Esto no es un detector de IA, y un detector de IA no es una prueba de nada.** No digas "no
funcionan" a secas: di lo documentado, que es más fuerte. OpenAI retiró el suyo el 20 de
julio de 2023 *"debido a su baja tasa de precisión"*, y hay estudios que encuentran que **más
de la mitad** de los textos escritos por no nativos en inglés se clasifican erróneamente como
IA (Liang et al., *Patterns*, 2023). **No sirven como prueba de autoría: ni para acusar a
nadie, ni para validarte a ti.** Este guardián no dice "esto es IA": dice "esto no se parece
a ti, y aquí está la línea". Fuentes en `references/fuentes.md`.

---

## Lo que NO se hace

- **No se le pide al usuario nada que esté publicado.** Si tiene web, se lee. Pedir que
  pegue su propia home es el error que hace que esta skill parezca un formulario.
- **No se scrapea LinkedIn** —va contra sus condiciones y puede costarle la cuenta— **ni se
  paga la API de X**, que no tiene capa gratuita. Para sus propios textos no hace falta:
  existen la exportación oficial y el copia-pega.
- **No se usan detectores de IA como validación.** Ni para juzgar sus textos ni para
  "comprobar" los que salen de aquí.
- **No se reconstruye una voz de memoria.** Si una fuente bloquea, se dice y se pide
  copia-pega. Inventarse cómo escribe alguien es el fallo que esta skill existe para evitar.
- **Nunca se piden contraseñas ni accesos.** No hacen falta para nada de esto. Si el usuario
  los ofrece, se rechazan y se le explica por qué.

---

## Si no ha publicado nunca nada

Pasa a menudo, sobre todo en un máster, y **no es motivo para saltarse el ejercicio**. Ya lo
has avisado antes de empezar; ahora pídele esto:

> "Escríbeme 200 palabras contando qué haces y a quién ayudas, **como se lo contarías a un
> amigo en un bar**. No lo pienses como un texto para publicar: escríbelo de un tirón, con
> las palabras que te salgan, y mándamelo con las faltas que tenga."

Sale un **primer manual, provisional**, y hay que llamarlo así en la primera línea: con una
sola muestra no se observan arranques repetidos, cierres habituales ni registro por canal, y
esos campos van con `Sin evidencia suficiente`. Lo que sí es: **su** voz.

**Que lo escriba de un tirón y no lo relea** —un texto repasado tres veces ya no es su voz
espontánea: es su voz con miedo—. Si le cuesta, **que lo mande en audio y se transcribe**. Y
sus **WhatsApp a clientes** valen: mucha gente escribe mejor ahí que en LinkedIn y no lo sabe.

**Modo prácticas (último recurso).** Solo si no tiene textos propios **y tampoco quiere
escribir las 200 palabras**: usa `ejemplos/corpus-turnos.md`, 12 piezas de un fundador
inventado. Cuando lo uses, dilo claro: **ese corpus está inventado y no sirve para publicar
nada**. Sirve para aprender el método.

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| Solo tiene 3 o 4 piezas | Haz el manual igual, llámalo "hipótesis de voz" en la primera línea y marca los campos vacíos. Dile que vuelva cuando tenga 10 |
| Sus piezas son de un solo canal | Extrae la voz igual y escribe "sin evidencia de registro por canal". No inventes cómo escribiría donde nunca ha escrito |
| El corpus no tiene ninguna opinión discutible | No lo rellenes de relleno. Escríbelo tal cual y díselo: es el hallazgo más útil del análisis |
| Las piezas del corpus están escritas con IA | Pregúntaselo directamente. Los que sí, se apartan del corpus y se guardan como contraejemplo |
| Hay dos voces (empresa y persona) | Un manual con dos registros declarados si hay 3+ piezas de cada uno; si no, se elige la documentada y se dice que la otra va por analogía |
| LinkedIn o Instagram bloquean la lectura | Es lo normal. Pide copia-pega de sus mejores piezas, con el camino exacto. No supongas lo que habría |
| Todas las piezas salen igual entre canales | Vuelve al paso 3 de la fase 2: estás partiendo de la primera pieza en lugar de la idea. Tira lo escrito y rehazlo |
| El guardián lo aprueba todo, o lo rechaza todo | Si aprueba todo, no lee el manual: opina. Oblígale a citar el campo en cada filtro. Si rechaza todo, el manual está lleno de campos incomprobables ("tono cercano") y el problema está en la fase 1 |
| El guardián marca un tic que sale mucho en su corpus | No es un tic, es su firma. Protocolo de densidad en `guardian.md`. Un tic no es un delito: es una señal para ir a comprobar |
| "Está bien, pero yo no lo firmaría" | Filtro 4. Manda su "no". Las tres salidas y las tres preguntas están en `guardian.md` |
| No encuentra un dato propio para el filtro 2 | No lo inventes ni lo rebajes. Manda **una** pregunta concreta a quien tenga el dato y espera. Es el momento en que la skill hace su trabajo |
| Pide las cinco piezas de golpe | Avisa una vez de lo que va a pasar y luego hazlo, volviendo cada vez a la idea original. Al entregar, di cuáles crees que han salido flojas |
| Se le acaba el tiempo a mitad | Cierra después del manual y guárdalo. El manual es lo que se hace una vez; las piezas se hacen siempre |

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
