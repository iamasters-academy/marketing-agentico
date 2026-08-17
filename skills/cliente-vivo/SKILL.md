---
name: cliente-vivo
description: Construye un cliente con el que puedes hablar, hecho de frases que alguien dijo de verdad. Busca sola la voz de tu mercado —reseñas tuyas y de tu competencia, foros, Reddit, LinkedIn, grupos del sector, reseñas de empleados—, monta la persona y su contra-persona con la cita que sostiene cada frase, y se caza a sí misma cuando te está dando la razón. Si no hay material, trae el suyo de prácticas y el ejercicio se hace igual.
---

# /cliente-vivo — Un cliente hecho de pruebas, no de imaginación

El buyer persona de toda la vida —la ficha con foto de banco de imágenes y "Marta, 34 años,
urbanita, valora su tiempo"— lo escribió alguien de memoria en una sala de reuniones. Y luego se
decide el copy, el precio y la campaña sobre eso.

Esto construye una persona **hecha de frases que alguien dijo de verdad** y te deja hablar con
ella: cada cosa que diga viene con la cita que la sostiene, o con un aviso de que se lo está
inventando. Y trae vacuna, porque el defecto de fábrica de estos modelos es **darte la razón**, y
una persona sintética complaciente es peor que no tener ninguna.

**Disparadores:** "/cliente-vivo", "buyer persona", "perfil de cliente ideal", "quiero hablar con
mi cliente", "entrevista a mi cliente", "qué piensa mi cliente de esto", "monta mi ICP", "analiza
las reseñas de mis clientes", "tengo transcripciones de llamadas", "por qué no me compran".

> **Cómo se llama.** En **Claude Code** y **Cowork**: `/cliente-vivo`. En **Claude.ai** no hay
> comandos con barra — pídelo con palabras; si no la coge, nómbrala: *"usa la skill cliente-vivo"*.
>
> **No la confundas con `/el-hueco`:** aquella trabaja con reseñas de **tus competidores**, esta
> con la voz de **tus propios clientes** y sobre todo de quien no llegó a comprarte.

---

## Antes de empezar

**1. Busca el perfil.** Sigue `references/_arranque.md`. Se llama `perfil-marca.md`. Si no hay,
**modo exprés de tres preguntas y adelante**: nunca mandes al usuario a ejecutar otra skill.

**2. Informes previos, opcionales.** Si hay un informe de `/el-hueco` en la carpeta, léelo: trae
las reseñas de la competencia ya buscadas y te ahorra medio barrido. Si no lo hay, lo buscas tú:
solo se pierde tiempo.

**3. Avisa del material antes de arrancar, no en el minuto veinte.** Aquí es donde la gente
abandona: a mitad de sesión hay que ir a buscar cosas al Drive, al cuaderno y a la bandeja de otro.

> "Para que sepas dónde te metes. Esto se construye con **frases reales de clientes**. Lo público
> lo busco yo —tus reseñas, las de tu competencia, foros, Reddit, LinkedIn, grupos del sector— y
> tú no copias nada. Lo que de verdad construye la persona es tu material interno: notas de
> llamadas, correos, la columna de 'motivo de la pérdida'. **Con tres o cuatro piezas ya
> trabajamos**, no hace falta vaciar el Drive; y si no lo tienes a mano, lo hacemos con material
> de prácticas que traigo dentro. Unos **35-45 minutos** con lo tuyo, **20** con el de prácticas."

**4. Dos preguntas que va a hacer, contestadas de antemano:**

- *"¿Esto no es inventarse un cliente con otro nombre?"* → "La frase la escribo yo. Lo que no elijo
  es **si existe o no en tu material**, y eso lo compruebas tú en treinta segundos."
- *"¿Y mis datos de la web?"* → No entran: la analítica es comportamiento agregado, no frases. Dilo
  en una línea, porque quien acaba de hacer `/mi-marca` espera que se cruce.

> **Quién hace el trabajo:**
>
> | Lo pones tú | Lo hago yo |
> |---|---|
> | El material de dentro de tu negocio, y el permiso para usarlo | Buscar y leer todo lo público: reseñas, foros, redes, sector |
> | Comprobar que las citas existen en tu material | Ordenar, contar, redactar, y marcar qué tiene respaldo (📌) y qué no (⚠️) |
> | Decidir qué haces con el hallazgo y validarlo | Hacer de esa persona y sostener la voz |
>
> Tu parte no es el trámite: es la que aporta el valor. El material interno no está en internet.

---

## Paso 0 — El barrido (lo hago yo, y busco mucho antes de pedir nada)

Sigue `references/_investigar.md`: Firecrawl si está —opcional, sin él funciona igual—, nativas si
no, preguntar al usuario **el último**.

**No te rindas con dos búsquedas.** El fallo típico es mirar la ficha de Google del negocio, verla
vacía y saltar a *"pégame tú el material"*. Antes hay que barrer esto entero:

| Dónde | Qué buscas | Qué es |
|---|---|---|
| Tu ficha de **Google Maps** · menciones de tu marca | lo que dicen de ti | 🟢 |
| Fichas de Maps de **tus competidores** | quejas y elogios de clientes de tu mercado | 🟡 |
| **Trustpilot, Doctoralia, Amazon, App Store, Google Play, G2, Capterra** | según lo que vendas | 🟢 la tuya · 🟡 la de otros |
| **Reddit** y foros del sector | cómo eligió proveedor la gente y qué le pasó | 🟡 (🟢 si te nombran) |
| **LinkedIn**: comentarios de tus posts, posts de competidores y del sector | tu audiencia y tu mercado hablando | 🟡, el más cercano |
| **Grupos de Facebook** del sector y de la zona · **asociaciones, colegios y gremios** | *"¿alguien ha contratado…?"*, hilos y boletines | 🟡 |
| **Reseñas de empleados** (Glassdoor, Indeed) de tus competidores | qué prometen fuera y qué pasa dentro | 🟡 aparte: **no es voz de cliente** |
| Prensa del sector, comparativas, **comentarios de YouTube** | quejas recurrentes | 🟡 |

- 🟢 **Voz propia** — de tus clientes o de quien estuvo a punto de serlo. **Sostiene frenos.**
- 🟡 **Voz de sector** — gente de tu mercado que no es cliente tuyo. **Sirve, marcada como tal**:
  da vocabulario, hipótesis y preguntas. **No sostiene ningún rasgo de tu persona y se cuenta
  aparte.** Colar una queja del sector como si fuera de un cliente tuyo es el peor fraude que
  puede cometer esta skill.

**Reglas:** di **cuántas piezas** sacas de cada sitio · **lo que sale a cero también se apunta** y
va al entregable · avisa del tiempo y ve contando · Trustpilot devuelve 403 casi siempre y
LinkedIn no se lee logueado: anótalo y sigue.

Al terminar, **enseña la tabla de qué miraste y qué devolvió**, y decide: con **3 o más piezas 🟢**
sigues y pides material interno para completar · con **solo 🟡** lo usas para preguntar mejor,
contado aparte · con **cero de todo** vas al paso 1, y si tampoco hay material interno, **ofreces
prácticas ya**.

---

## El modo prácticas se ofrece aquí — nadie se queda sin poder hacer el ejercicio

Este era el fallo de diseño más claro de la skill: el barrido salía seco y, en vez de ofrecer el
material de prácticas **que lleva dentro**, pasaba directa a *"pégame tú el material"*. Quien no
tiene negocio, o no tiene acceso al CRM de su empresa, se quedaba fuera.

**Cuando el barrido salga a cero, cuando diga que no tiene material, cuando dude, o cuando lleve
diez minutos buscando** — ofrécelo sin esperar a que lo pida:

> "El barrido público ha salido a cero: {las fuentes que miraste}. Es lo normal en B2B pequeño y en
> negocios nuevos: nadie deja una reseña de una consultora. Dos caminos, y los dos sirven:
> **A) Con lo tuyo** — notas de llamadas, correos, la columna de 'motivo de la pérdida'; es lo que
> de verdad construye la persona. **B) Con material de prácticas** — traigo dentro tres negocios
> completos (reseñas, llamadas, correos, encuestas y notas de CRM, inventados pero realistas, con
> un patrón escondido en cada uno): veinte minutos, aprendes el método igual, y lo repites con lo
> tuyo cuando lo tengas. ¿A o B?"

Está en **`ejemplos/voz-del-cliente.md`** —Sonrisa Norte (clínica), Turnos (software), Raíz
(producto)— y trae **dos preguntas trampa por marca** para practicar la vacuna.

**Reglas:** adapta la primera frase si el barrido sí encontró algo · dilo claro cada vez que
entregues algo (son datos inventados) · **no mezcles nunca** prácticas con material real en el mismo
expediente: si aparecen dos piezas suyas, se rehace, no se suma · avisa de que aquí la verificación
solo se puede hacer contra ese fichero.

---

## Paso 1 — El material propio: una sola petición, cerrada

**Nunca pidas a cachos.** El punto de mayor abandono fueron veinte minutos rebuscando con la sesión
parada, porque el material estaba en tres sitios. Se pide **una vez**, con la lista completa y el
sitio donde suele estar cada cosa:

| Qué sirve | Dónde suele estar | Qué aporta |
|---|---|---|
| **Notas de llamadas de venta**, aunque sean a mano | tu cuaderno, tu Drive, el bloc del comercial | Lo mejor que hay: el porqué con matices |
| **La columna "motivo de la pérdida"** del CRM o de la hoja de leads | CRM → exportar CSV · o la hoja de Drive | La voz de quien no compró: **la más valiosa** |
| **Correos de antes de comprar, y las quejas** | tu bandeja: "presupuesto", "precio", "una duda" | El momento exacto de la duda |
| **Respuestas abiertas de encuestas** | Google Forms / Typeform → Respuestas | Vocabulario. Ojo a **quién** contestó |
| **Soporte, devoluciones, reclamaciones** | el buzón de soporte o el helpdesk | Frenos de después de comprar |
| **WhatsApp o DMs con clientes** | el móvil | Las frases más crudas que vas a leer |

Y las cinco reglas, con la lista y de una vez:

1. **Júntalo y pégamelo de golpe.** No en seis mensajes.
2. **Tope de diez minutos.** Lo que no aparezca se queda fuera: **con tres o cuatro piezas ya hay
   expediente.**
3. **Sin resumir**, con muletillas y frases a medias: con material promedio sale una persona promedio.
4. **Lo que esté en la bandeja de otra persona no para la sesión.** Seguimos, y al final te dejo
   escrito el mensaje para pedírselo.
5. **Quítale los nombres y los teléfonos si te da tiempo. Si no, ya lo paro yo cuando lo vea.**

Esa quinta regla es corta a propósito. **El aviso previo largo no funciona**: se lee, se asiente y
se pegan los datos igual. Lo que protege es lo de abajo.

### La parada — este es el mecanismo, no el aviso

**En cuanto recibas material, antes de analizar nada, escanéalo.** Es un paso obligatorio del
método. Busca: nombres y apellidos (de clientes **y de tus empleados**) · teléfonos, correos y
usuarios · direcciones · DNI, pólizas, números de pedido o de historia clínica · **nombres de
empresas cliente**, que en B2B identifican más que las personas · datos de salud o económicos · y
**combinaciones que señalan a uno solo** (cargo + sector + provincia, *"el único de {ciudad} que
lleva {especialidad}"*). Esa última es la que más se cuela y casi nadie la ve.

Si hay algo, **para y dilo**, separando lo que puedes resolver tú de lo que no, y **sin vender que
renombrarlo lo arregla**. Guion literal y tabla de etiquetas en `references/anonimizar.md`. Después,
etiquetas anónimas en todo y **no vuelvas a escribir esos datos en ninguna respuesta**.

---

## Paso 2 — El expediente

Aquí no se resume: se **cita**. Cada rasgo lleva pegada la frase que lo sostiene y en cuántas piezas
aparece.

> **Una pieza** es una reseña, **una conversación** (llamada o hilo de correo), una respuesta
> abierta de encuesta o una ficha de CRM. Una llamada de hora y media es **una** pieza.

Antes de escribir nada, inventario en voz alta con tres ajustes que casi siempre bajan el número —y
eso es lo correcto:

1. **Deduplica.** La ficha de CRM del 22 de abril y la llamada del 22 de abril son la misma
   conversación contada dos veces.
2. **Separa poblaciones.** Solo **quien decide la compra** sostiene frenos de compra. **Quien usa el
   producto** (la plantilla del cliente, el usuario final) da vocabulario y frenos de uso, pero no
   firma un contrato. La **voz de sector** (🟡) da hipótesis y nada más. Cada una se cuenta aparte.
3. **Solo se suman piezas cuando dicen el mismo freno explícito.** Si hay que interpretar para
   agrupar, no se agrupa.

Al dar el número, **enmárcalo antes de que baje la moral**: *"seis piezas parece poco y no lo es:
cuatro son de gente que no te compró, y eso no lo guarda casi nadie. Con seis sostengo un freno que
aparezca en dos o tres; lo que no puedo darte son porcentajes ni decir «tu cliente»."*

**Campos obligatorios:** quién es (una frase) · lo que quiere resolver (el problema, no el producto)
· dos o tres frenos con su cita y su recuento · el disparador, que suele ser un hecho concreto —un
documento, una factura, la pregunta de un tercero— · sus palabras literales · y **lo que no
sabemos**, que es campo obligatorio.

**Motivo declarado vs. mecanismo real.** "Es caro" es lo que se declara y casi nunca es lo que pasó:
busca la diferencia entre el motivo declarado y lo que la persona **describe** que le ocurrió. Y
preséntalo como **hipótesis** —*"este material es compatible con que el freno sea X"*— para
contrastarlo con más conversaciones o con una prueba pequeña antes de mover el precio.

---

## Paso 3 — Darle voz: el pie de fuente

Explica cómo se habla con ellas —*"escribe `{Nombre}:` delante de la pregunta, o pregunta y yo te
digo quién contesta; las importantes, a las dos y en el mismo orden"*— y arranca. Al responder
**haces de ella**, con su vocabulario. Y cada respuesta termina con un pie, siempre, sin que lo pidan:

```
📌 Fuente: "cita textual" — dónde, fecha
⚠️ Sin respaldo: no hay nada en el material que sostenga esto.
```

### Las tres preguntas del pie de fuente

El pie **se puede falsificar solo**, y ese es el fallo peligroso: no falla poniendo una frase sin
cita, falla poniendo **una cita real que no sostiene la frase**. El usuario ve el 📌 y da el párrafo
por bueno. Antes de escribir un 📌, comprueba las tres; si falla una, es ⚠️:

1. **¿Existe?** Aparece **literal** en el material. Si está "casi igual pero mejor dicha", la has
   reescrito y ya no prueba nada.
2. **¿Sostiene?** Dice **lo que la frase afirma**. No algo del mismo tema: eso.
3. **¿Es de quien habla?** Es de **la persona a la que se la atribuyes**, no de otra pieza.

Una cita real debajo de una frase que no sostiene **es peor que no poner nada**: es un invento con
apariencia de rigor.

### Clasifica el tema antes de contestar

| El tema, en el material | Qué haces |
|---|---|
| **Presente** — hay citas que hablan justo de eso | Contestas con 📌 |
| **Semi-presente** — hay citas cerca, del mismo asunto pero de otra cosa | **⚠️ obligatorio** |
| **Ausente** — no hay nada | ⚠️ limpio. Aquí casi nunca se falla |

**La zona de riesgo es lo semi-presente, no lo ausente.** Contraintuitivo, y por eso hay que decirlo:
con un tema ausente el aviso salta solo; con uno a medias hay citas cerca que se pueden estirar, y es
ahí donde se cuela todo. El caso real, en `references/vacuna-antisesgo.md`.

### Dosificación — que el pie se siga leyendo

Tres pies largos por turno se vuelven ruido y el usuario empieza a saltárselos, que es cuando dejan
de protegerle.

- **El ⚠️ nunca se abrevia.** Entero y solo: es la marca que tiene que destacar.
- **El 📌 sí**, desde la tercera respuesta: el trozo de cita que sostiene la frase + referencia corta
  (`Cliente A · 12 jun`). La cita completa ya está en el expediente. Un pie por respuesta; la segunda
  fuente en una línea: `también en: Contacto C · 26 jun`.
- **Vuelve al pie completo** cuando la respuesta sostenga un hallazgo nuevo o el usuario vaya a
  decidir algo con ella.

---

## Paso 4 — La vacuna (obligatoria)

Los modelos colapsan hacia un personaje amable y promedio **aunque les pidas lo contrario**. Está
medido y publicado: referencias y detalle en `references/vacuna-antisesgo.md`.

Cuatro contramedidas: **1)** citas crudas, no resúmenes · **2)** pie de fuente con sus tres preguntas
· **3)** contra-persona con **material propio** —y si no hay material de quien no compró, se escribe
*"contra-persona no construida"* y se deja visible en el entregable, no se fabrica— · **4)** vigilar
cómo pregunta el usuario (banco en `references/entrevista-al-cliente.md`).

### El protocolo de colapso

Cazarse a sí misma es lo mejor que hace esta skill, **y no puede depender de que el modelo se pille
solo**. Los disparadores son mecánicos y se comprueban **antes** de dar la respuesta por buena.
**Basta con uno:**

1. El usuario ha dicho **en este mismo turno** lo que quiere hacer, y la respuesta le da la razón.
2. La pregunta es sobre el futuro o sobre una hipótesis.
3. El tema es **semi-presente**.
4. Dos respuestas seguidas sin ⚠️ y de acuerdo con el usuario.
5. La persona habla más pulido que el material, da cifras que no están, o cambia de opinión en cuanto
   la contradicen.

**Y entonces se ejecutan los seis pasos de `references/vacuna-antisesgo.md`**, en ese orden: retirar
la respuesta con un 🛑 **en el mismo turno** → diseccionarla → dar la respuesta correcta → **la misma
pregunta a la contra-persona sin cambiar una palabra** (si también da la razón, se **declara el
colapso**) → **girar la pregunta a hechos pasados** y hacérsela a las dos → comparar en una tabla
futuro/pasado. El último paso es el que produce el hallazgo, y a menudo contradice el plan con el que
venía el usuario.

---

## Lo que entregas

### 1. El expediente — `marketing/cliente-vivo-persona.md`

Nombre fijo, para que otra skill lo encuentre otro día.

```markdown
# Cliente vivo · {{negocio}}
_{{fecha}} · /cliente-vivo · {{N}} piezas del lado comprador{{ + M de otras poblaciones}}_

## De qué está hecho esto
{{piezas por tipo, población y fechas · el barrido, incluido lo que salió a cero · qué falta}}

## La persona
**{{Nombre}}** — {{una frase}} · *el nombre es una etiqueta mía, no es de nadie del material*
- **Lo que quiere resolver:** {{…}} · 📌 "{{cita}}" — {{fuente}}, {{fecha}}
- **Lo que le frena:** {{2-3}} — en {{N}} de {{T}} piezas · 📌 "{{cita}}" — {{fuente}}
- **El disparador:** {{el hecho concreto}} · 📌 "{{cita}}"
- **Sus palabras:** {{expresiones literales, sin corregir}}
- **Lo que NO sabemos:** {{huecos}}

## La contra-persona
**{{Nombre}}** — {{quien no compró}} · {{mismos campos, sus citas, cuántas piezas la sostienen}}

## Motivo declarado vs. mecanismo real  *(hipótesis, no hallazgo demostrado)*
| Lo que dicen | Lo que el material describe | Qué cambia si es cierto |

## Cómo hablar con ellas
{{tres preguntas que sí tienen respuesta con pruebas, y dos que no, con el porqué}}
```

### 2. El HTML — la ficha que se imprime y se cuelga

Sigue `references/_entregable.md` (colores del perfil → de su web → dos preguntas) y genéralo **al
final**, después de confirmar las conclusiones en el chat.

Aquí el entregable es especialmente potente: la ficha de la persona y su contra-persona con las citas
al lado es justo lo que alguien imprime y cuelga. Cuídalo.

- **Las dos fichas enfrentadas**, mismos campos y mismo orden, para compararlas de un vistazo, y
  **cada ficha entera en su página al imprimir** (`break-inside:avoid`).
- **Cada rasgo con su cita visible**, entrecomillada y con fuente y fecha debajo (`.cita` y `.fuente`
  del esqueleto). Las citas **son** el documento: no las escondas en notas.
- **El recuento junto a cada freno** ("3 de 6 piezas") y cuántas piezas sostienen a cada persona: si
  una está la mitad de fundada, que se vea.
- **Los ⚠️ juntos en su bloque** —"Lo que no sabemos"—, no repartidos: es la lista de la compra.
- **La tabla motivo declarado vs. mecanismo**, marcada como hipótesis, y **el diario del barrido** con
  las fuentes que salieron a cero.
- **Lo que NO va:** foto, edad inventada, aficiones, ni una frase que empiece por "nuestro cliente
  ideal es". Y el aviso de que el nombre es una etiqueta, escrito dentro del HTML.

### Dos reglas que no se negocian

**1. Ningún rasgo sin cita.** Si te parece obvio pero no hay frase que lo sostenga, va a "Lo que no
sabemos", y se dice en voz alta: *"he sostenido tres frenos con citas; el cuarto lo intuyo, pero solo
lo dice una persona: te lo dejo como hipótesis"*.

**2. Intentar la contra-persona no es opcional.** Una sola persona sintética se convierte, en pocos
mensajes, en el cliente que tú querías tener. Dos ancladas en materiales distintos no lo impiden,
pero lo dejan a la vista. Y si no hay material contrario, se dice — no se fabrica.

---

## 🔍 Test de la mentira

1. **¿La cita sostiene la frase?** Coge la afirmación más importante y pásale las tres preguntas del
   pie. **Esta es la que caza el fallo peligroso:** una cita real bajo una frase que no sostiene.
2. **Abre una cita y búscala en el material.** Tiene que aparecer **literal**. Hazlo delante del
   usuario y **pídele que repita con otra**: treinta segundos, y es la única prueba que vale.
3. **La pregunta trampa.** Algo que el material no cubre. **Hazla dos veces:** con un tema ausente y
   con uno **semi-presente**, que es donde de verdad falla.
4. **La misma pregunta importante a la contra-persona.** Si las dos responden lo mismo con otras
   palabras, el colapso ya ha ocurrido: vuelve al material y mete citas más crudas.

**Lo que este test NO comprueba** —dilo—: que esas frases representen a todos tus clientes (quien
escribe reseñas o coge el teléfono es una minoría autoseleccionada, y casi nunca incluye a quien se
fue en silencio); que lo que la gente **dice** que hará sea lo que hará; que el problema siga
existiendo hoy; ni que haya mercado suficiente. Esto es un **retrato bien fundado de lo que unas
personas concretas dijeron**, no la verdad sobre tu mercado. La verdad la da vender, o preguntarle a
alguien de carne y hueso.

> Si solo hay tiempo para una, que sea la primera: detecta el fallo que el usuario no vería nunca.

---

## Al terminar

**1. Escribe las correcciones en el perfil.** Si algo contradice `perfil-marca.md`, va a su sección
`## Correcciones` con fecha (`references/_arranque.md`). Aquí pasa mucho: el diagnóstico no coincide
con el material, quien decide la compra no es el cliente del perfil, o el dolor principal no aparece
en ninguna pieza.

```markdown
- **{fecha} · /cliente-vivo:** el perfil dice que el freno es {X}; en 6 piezas del lado comprador
  nadie lo menciona. Lo que sí aparece, en 3, es {Y}.
```

**2. Separa lo que puede hacer él de lo que depende de otra persona**, y **escribe tú el mensaje**
para pedir lo que falta:

| Lo puedes hacer tú esta semana | Necesita a otra persona |
|---|---|
| Llamar veinte minutos a tres clientes con las preguntas del expediente | El acceso al CRM o al buzón de soporte |
| Rellenar "motivo de la pérdida" con la **frase literal**, no con tu interpretación | El OK para hablar con quien no compró |
| Probar la pieza más barata que salga del hallazgo | Cambiar precios o publicarlos |

**3. Cómo lo defiende en una reunión** — el consejo más valioso y el más fácil de saltarse:

> "Llévalo por lo que es. Primero **las citas sin la persona**: cuatro frases dichas por cuatro
> personas de cuatro empresas distintas; eso no te lo discute nadie. Después **el número, dilo tú
> antes de que lo pregunten**. Después el hallazgo, **en formato hipótesis**. Y al final la prueba
> barata, que es lo único que te van a aprobar. Lo que **no** lleves: el nombre, una foto, y
> cualquier frase que empiece por 'nuestro cliente ideal es'. En cuanto se convierte en un personaje
> de PowerPoint, en tres semanas alguien decide el presupuesto sobre un señor que no existe — que es
> exactamente el buyer persona del que desconfiabas."

**4. Cuándo se repite:** cuando cambie el material, no por calendario. Cada cinco piezas nuevas. Y
**obligatorio antes de tocar precios o rehacer la web**.

---

## Lo que NO se hace

- **No prometas APIs que no dan lo que parece:** la de Google Places devuelve **5 reseñas** por ficha,
  y la de Trustpilot está en planes de empresa. Si no la tiene contratada, no existe.
- **No montes un scraper.** Leer fichas públicas como una persona, bien; automatizar la extracción
  masiva va contra las condiciones de esas plataformas.
- **No recomiendes herramientas de pago** (para un expediente no hacen falta) **ni pidas credenciales
  o accesos**, nunca, aunque te los ofrezca.
- **No inventes el material que falte.** Que una fuente bloquee o que no haya llamadas grabadas **es
  un dato del expediente**, no un obstáculo que sortear.
- **No cuentes voz de sector como voz de tus clientes.**

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| El barrido público sale a cero | Es lo normal en B2B pequeño. Se escribe como hallazgo y se ofrece el paso 1 o el modo prácticas. **No se rellena de memoria** |
| No tiene material, o lleva diez minutos rebuscando en el Drive | Córtalo tú y pasa a prácticas, sin dramatizar. Y la tarea: tres llamadas de veinte minutos o una pregunta abierta a diez clientes |
| Contesta a todo y siempre suena razonable | Es el colapso. Ejecuta el protocolo del paso 4 |
| Las dos personas dicen lo mismo | No están hechas de material distinto: la contra-persona necesita sus propias citas |
| Solo hay reseñas de 5 estrellas | Tienes la voz de tus fans, no la de tu mercado. Escríbelo grande en "Lo que no sabemos" |
| Pega conversaciones con nombres y teléfonos | Para, escanea, dilo y trabaja con etiquetas. No lo dejes pasar "por esta vez" |
| El material es de hace tres años | Se usa, pero fechado y avisado. Va a "Lo que no sabemos" |
| Se desanima con el número de piezas | Enmárcalo: cuatro piezas de quien no compró es más de lo que tiene el 90 % de las pymes |

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
