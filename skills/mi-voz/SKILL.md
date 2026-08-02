---
name: mi-voz
description: Extrae tu voz real de tus textos publicados, escribe contenido nativo para cada canal y lo pasa por un guardián que rechaza lo que no suena a ti. Para publicar con IA sin dejar de sonar a ti.
---

# /mi-voz — Una fábrica de contenido con un guardián en la puerta

Lo que se enseña normalmente es esto: *una idea → cinco piezas*. Escribes un post, le pides
a la IA que lo adapte a LinkedIn, a X, a Instagram y a la newsletter, y publicas.

Eso no es producir en cinco canales. Es **publicar lo mismo cinco veces**, con el tono de
nadie, y a un ritmo que nadie puede leer.

Esta skill hace tres cosas, en este orden, y el orden importa:

1. **Saca tu voz de tus propios textos publicados** y la escribe en un documento que se
   puede comprobar línea a línea. Ese documento se guarda y lo reutiliza el resto del kit.
2. **Escribe cada pieza desde cero en su canal**, no traduce una pieza a los demás.
3. **Pone un guardián en la puerta** que lee lo que ha salido y **rechaza** lo que no suena
   a ti. Una fábrica sin guardián es una fábrica de ruido.

**Disparadores:** "/mi-voz", "escribe como yo", "extrae mi voz", "manual de voz", "clona mi
estilo", "que no suene a IA", "contenido para LinkedIn e Instagram", "adapta este post a
todos los canales", "hazme contenido para esta semana", "revisa si esto suena a IA".

> **Cómo se activa esta skill.** En **Claude.ai** no hay comandos con barra: pídelo con
> palabras normales y la skill se activa sola. Si ves que no la coge, nómbrala:
> *"usa la skill mi-voz"*. En **Claude Code** sí funciona `/mi-voz`.


---

## Antes de empezar

1. **Busca el perfil de marca.** En Claude Code, el fichero `perfil-marca.md`. En Claude.ai,
   las instrucciones del proyecto.

   **Si no hay perfil, esta skill NO se para.** El 90 % de `/mi-voz` sale del corpus, no del
   perfil: lo único que se pierde es la sublista *DECLARADO* de "palabras que jamás usas".
   Dilo así y sigue:

   > "No veo tu perfil de `/mi-marca`. Puedo trabajar igual: tu voz la saco de tus textos, no
   > del perfil. Lo único que va a quedar vacío es la lista de palabras que tú dijiste que
   > nunca usarías. Si luego quieres, ejecutas `/mi-marca` y lo completamos. ¿Seguimos?"

   Si contesta que sí, sigue y marca ese campo como `Sin evidencia: no hay perfil de marca`.
2. **Mira si ya existe un manual de voz** (`manual-de-voz.md`, o en el proyecto). Si existe,
   **no repitas la fase 1**: enséñaselo, pregunta si sigue valiendo y salta a la fase 2.
3. **Pide el material antes de escribir nada.** Esta skill no funciona de oídas. Necesitas un
   **corpus**: el montón de textos suyos que vas a leer para sacar su voz. La primera
   pregunta es siempre la misma, y **da las tres salidas** para que nadie se quede parado:

   > "Para escribir como tú necesito leerte. Elige la que te venga mejor:
   >
   > **A) Te pego mis textos** *(la que mejor funciona)*. Entre 10 y 20 cosas que hayas
   > publicado: posts de LinkedIn, pies de foto de Instagram, newsletters, artículos… lo que
   > tengas. Copia y pega aquí mismo, no hace falta nada más. Si puedes, que sean **las que
   > mejor funcionaron**, y dime cuáles fueron.
   >
   > **B) No he publicado nunca nada.** Te pido 200 palabras escritas de un tirón y salimos
   > igual, con un manual más pobre.
   >
   > **C) Quiero practicar el método antes.** Uso un corpus de ejemplo que traigo dentro. Sirve
   > para aprender, no para publicar."

   **Antes de que pegue nada, avísale una vez:** que no pegue DMs, nombres de clientes,
   precios privados ni textos de terceros. Va a quedar en la conversación.

4. **Confirma los canales antes de producir:**

   > "Voy a escribir para {{canal A}} y {{canal B}}. ¿Vamos con estos dos?"

   Y si pide cinco, dilo una vez: **menos canales bien que cinco mal.** Luego hazlo si
   insiste.

> **Quién hace el trabajo:** las búsquedas y la lectura las hago yo. Al usuario solo le pido
> que pegue material cuando no puedo llegar a él (redes cerradas, sitios que bloquean).

---

## El método

### Fase 1 — Sacar la voz

Lee el corpus entero antes de escribir una sola conclusión. Luego rellena el manual siguiendo
**`references/manual-de-voz.md`**, que trae la plantilla completa y los criterios.

La regla que gobierna esta fase, y no tiene excepciones:

> **Cada campo va con citas literales del corpus.** Si un campo no tiene cita, se escribe
> `Sin evidencia suficiente` y se dice por qué.

Porque esta es la diferencia entre un manual que sirve y uno que no:

| ❌ No sirve | ✅ Sirve |
|---|---|
| "Tono cercano y directo" | "Empiezas con una escena y una hora: «Domingo, 21:40.» (pieza 1)" |
| "Evita tecnicismos" | "Ni una vez en 12 piezas: «optimizar», «solución», «escalar»" |
| "Cierra invitando a la conversación" | "Cierras con una pregunta concreta, nunca con «¿y tú qué opinas?»" |

La columna izquierda suena a manual de marca de agencia y **no se puede comprobar**. El
guardián de la fase 3 no puede rechazar nada con eso.

**Dos avisos que hay que dar aquí mismo:**

- **Di con cuántas piezas has trabajado y de qué canales.** Con menos de 6, el manual es una
  hipótesis y así hay que llamarlo. Va en la cabecera del documento.
- **Si en todo el corpus no hay ni una frase con la que alguien pudiera estar en
  desacuerdo, dilo.** Es el hallazgo más importante que puedes darle, y es incómodo:
  *"tu contenido es correcto y no es tuyo"*. No lo suavices.

**Que no se quede en el chat.** Es el activo que va a usar el resto del kit y se hace una
vez. **Di quién hace qué, porque no lo hace el mismo:**

- **En Claude Code lo guardo yo**, como `manual-de-voz.md`, en la misma carpeta que
  `perfil-marca.md`.
- **En Claude.ai lo tienes que hacer tú**, y ahora, no "cuando puedas": copia el manual y
  pégalo en las instrucciones del Proyecto, o descárgalo y súbelo como archivo al Proyecto.
  Yo no puedo hacerlo por ti. Un manual de voz que se queda en el historial de un chat está
  perdido.

### Fase 2 — Escribir nativo, canal por canal

"Nativo" quiere decir escrito **para ese sitio**, no traído de otro. Los detalles de cada
canal —qué entrada funciona, qué delata que un texto viene de otro lado— están en
**`references/canales.md`**.

El orden de trabajo es este, y el paso 3 es el que hace todo el trabajo:

1. **Decide en qué canal vive mejor la idea.** No todas las ideas merecen todos los canales.
2. **Escribe esa pieza entera**, con el manual de voz delante.
3. **Para el segundo canal, vuelve a la idea original — no a la pieza que acabas de
   escribir.** Si partes del texto de LinkedIn, vas a producir una traducción del texto de
   LinkedIn.
4. **Compara las primeras frases.** Si se parecen, tira la segunda y empieza de nuevo.

> **La regla de la primera frase:** dos piezas de la misma tanda no pueden empezar igual ni
> parecido. Es la comprobación más rápida que existe para saber si has escrito dos cosas o
> una maquillada.

### Fase 3 — El guardián

Ahora dejas de escribir y pasas a criticar. La rúbrica completa está en
**`references/guardian.md`**. Lo esencial:

**Cómo se ejecuta.** En Claude Code, lánzalo como **subagente** —una copia de Claude con su
propio contexto, que solo ve el manual de voz y el texto, no la conversación donde se
escribió—. En Claude.ai no hay subagentes: cambia de papel de forma explícita y anúncialo:

> "Ahora dejo de escribir y paso a criticar. Me olvido de que esto lo he redactado yo."

**Los tres filtros.** Basta fallar uno:

| Filtro | La pregunta | Falla si… |
|---|---|---|
| **1 · Voz** | ¿Se parece a lo que escribe esta persona? | Arranque, muletillas, formato o cierre no encajan con el manual |
| **2 · Sustancia** | ¿Hay algo aquí que **solo** pueda decir él? | No hay ningún nombre propio, cifra con origen, fecha, experiencia en primera persona ni opinión discutible |
| **3 · Canal** | ¿Es nativo, o genérico con otro envoltorio? | Comparte primera frase con otra pieza, o lleva marcas de otro canal |

**El veredicto es uno de tres.** "Está bastante bien, pero…" no es un veredicto.

- **PASA** → se entrega.
- **REESCRIBE** → falla el 1 o el 3, pero la sustancia está. Se arregla lo señalado.
- **TIRA** → falla el 2. **No se reescribe**: se vuelve a la idea. Si no hay nada propio
  dentro, reescribirlo solo lo disfraza mejor.

**Cada objeción cita la línea exacta y el campo del manual que incumple.** Si no puedes
citar la línea, no es una objeción: es una sensación, y te la guardas.

**Máximo dos reescrituras.** A la tercera se para y se dice la verdad:

> "Llevamos tres intentos y sigue sin sonar a ti. No creo que el problema sea la redacción:
> creo que esta idea todavía no es tuya. ¿Qué te pasó a ti con esto? Cuéntamelo como se lo
> contarías a alguien en un bar y lo escribo con eso."

---

## Lo que entregas

Dos documentos. El primero solo la primera vez.

```markdown
# Manual de voz · {{nombre}}
_Extraído de {{N}} piezas · {{fechas}} · {{canales}} · generado con /mi-voz_

{{Sigue la plantilla completa de references/manual-de-voz.md}}
```

```markdown
# Contenido · {{idea}}
_{{fecha}} · generado con /mi-voz_

## La idea
{{En una línea. De dónde salió.}}

## Dónde vive
{{Los canales elegidos y por qué. Y cuáles se han descartado, que también importa.}}

## {{Canal 1}}
{{La pieza completa, lista para copiar y pegar}}

**Guardián:** PASA · {{qué filtro estuvo más justo}}

## {{Canal 2}}
{{La pieza completa}}

**Guardián:** PASA · {{...}}

## Lo que se ha rechazado por el camino
{{Los intentos que no pasaron y el motivo, citando la línea. Esto enseña más que las
piezas buenas — no lo borres.}}
```

### Tres reglas que no se negocian

**1. Todo lo que dice el manual de voz sale del corpus.** Ni una inferencia elegante sobre
"su personalidad de marca". Si no está escrito en una de sus piezas, no está en el manual.

**2. Las piezas rechazadas se entregan.** Con el motivo y la línea señalada. Es la parte del
entregable que hace que el usuario aprenda a rechazar solo.

**3. El guardián no negocia con el filtro 2.** Un texto sin nada propio dentro no se
reescribe por muy bien que suene. Ese es exactamente el contenido que la gente reconoce como
hecho por una máquina, y el que más caro sale publicar.

---

## 🔍 Test de la mentira

Tres comprobaciones, en voz alta y delante del usuario. Las tres las puede hacer él solo,
ahora mismo:

1. **Busca una muletilla del manual en tus textos originales.** Ctrl+F, la palabra literal.
   Si no aparece **al menos tres veces**, el manual se la ha inventado — y todo lo que salga
   de ahí va a sonar a un personaje que no eres.
2. **Compara la primera frase de las dos piezas.** Si dicen lo mismo con casi las mismas
   palabras, no has producido para dos canales: has copiado y pegado con retoques.
3. **Busca en cada pieza un nombre, una cifra con origen, una fecha o una opinión que solo
   puedas decir tú.** Si no hay ninguna, da igual lo bien que suene: la podría haber escrito
   cualquiera. Y eso es justo lo que la gente reconoce como texto de máquina.

**Lo que este test NO comprueba** —dilo, porque importa—:

- **Que lo que dices sea verdad.** Un dato inventado con tu tono exacto pasa los tres
  filtros. Los nombres, las cifras y las fechas los verificas tú contra la fuente antes de
  publicar. Este es el límite más importante de los cuatro.
- **Que la pieza vaya a funcionar.** Sonar a ti y funcionar son cosas distintas.
- **Que un lector no vaya a pensar que lo escribió una IA.** Eso **no se puede medir**, y los
  detectores no valen como prueba (ver abajo).
- **Que la voz extraída sea la que te conviene tener.** Si tu voz publicada es aburrida, este
  método defiende que sigas siendo aburrido con precisión. Cambiarla es una decisión tuya y
  se toma publicando distinto durante meses, no en un chat.

> Si solo hay tiempo para una, que sea la tercera.

### Y un aviso que hay que dar sin que lo pidan

**Esto no es un detector de IA, y un detector de IA no es una prueba de nada.** No digas
"no funcionan" a secas: di lo que está documentado, que es más fuerte. OpenAI retiró el suyo
el 20 de julio de 2023 *"debido a su baja tasa de precisión"*, y hay estudios que encuentran
que **más de la mitad** de los textos escritos por personas no nativas en inglés se
clasifican erróneamente como generados por IA (Liang et al., *Patterns*, 2023). Es decir:
**no sirven como prueba de autoría, ni para acusar a nadie ni para validarte a ti.** Si pasas
un texto tuyo por un detector, puede decirte que lo ha escrito una máquina.

Este guardián no dice "esto es IA". Dice "esto no se parece a ti, y aquí está la línea".
Fuentes exactas en `references/fuentes.md`.

---

## De dónde salen tus textos de verdad

**Esta skill está pensada para funcionar hoy mismo con tus propias piezas publicadas.** El
corpus de prácticas es el último recurso, no el modo normal: un manual de voz sacado de un
personaje inventado no sirve para publicar nada.

Tres vías, en este orden:

### Vía 1 — Los leo yo (por defecto)

Con búsqueda web activada puedo leer lo que esté publicado en abierto: **su web o blog**, el
**archivo público de su newsletter** (Substack, beehiiv…), su **canal de YouTube** (las
transcripciones sirven, y muy bien: es su voz hablada), **Medium**, y a veces sus **posts
públicos de LinkedIn o X**.

Empieza por aquí y **di siempre cuántas piezas has podido leer de cada sitio**. Si de
LinkedIn solo has sacado tres, eso cambia lo sólido que es el manual y hay que escribirlo en
la cabecera.

**Lo que casi nunca voy a poder leer:** los pies de foto de Instagram (necesitan sesión
iniciada) y buena parte de LinkedIn, que bloquea la lectura automática con frecuencia. No es
un fallo: es así.

### Vía 2 — Los pegas tú (la que nunca falla)

Diez a veinte piezas, copiadas y pegadas. Que sean **las que mejor funcionaron** y que
marque cuáles, porque eso le dice al manual qué parte de su voz le está dando resultados.

> "De Instagram no puedo leer nada sin tu sesión iniciada. Abre tu perfil, coge tus 10 pies
> de foto que mejor funcionaron y pégamelos aquí. Dos minutos y lo tengo."

**Esta vía es la más fiable de las tres y conviene decirlo sin complejos.** Además tiene una
ventaja que las otras no: al elegir sus mejores piezas, el usuario ya está haciendo la mitad
del trabajo.

### Vía 3 — La exportación oficial (gratis, y solo si tiene mucho material)

Las plataformas dejan descargar lo tuyo sin pagar nada. Merece la pena solo si publica
mucho; si tiene quince posts, la vía 2 es más rápida.

| Plataforma | Cómo | Cuánto tarda |
|---|---|---|
| **LinkedIn** | Ajustes y privacidad → Privacidad de los datos → "Obtén una copia de tus datos". La categoría **Shares** son tus publicaciones | Lo que tarde LinkedIn en prepararlo: puede ir de unos minutos a un par de días. Avisa por correo y el enlace caduca |
| **Instagram** | Centro de cuentas → Tu información y permisos → **Descargar o transferir información** | Lo que tarde Meta. Puede llegar el mismo día o tardar bastante más |
| **X** | Configuración → Tu cuenta → Descargar un archivo de tus datos | Lo que tarde X. No hay plazo garantizado |
| **Newsletter** | Si el archivo de envíos es público, ya está publicado: se lee directamente | Inmediato |

Rutas comprobadas en agosto de 2026 (`references/fuentes.md`). **No prometas plazos**: las
plataformas no los garantizan y cambian los menús cada temporada. Si no encuentra la opción o
el archivo no llega, que no pierda la tarde: copia y pega, que es la vía 2 y nunca falla.

### Lo que NO se hace

- **No se scrapea LinkedIn.** Va contra sus condiciones de uso y puede costarle la cuenta.
  Y para sus propios posts no hace falta: existe la exportación oficial.
- **No se paga la API de X.** Su documentación oficial dice que el precio es *pay-per-usage*
  y no ofrece capa gratuita: leer publicaciones cuesta dinero. Recuperar quince tuits propios
  pagando una API es absurdo cuando existen el archivo personal y el copia-pega.
- **No se usan detectores de IA como validación.** Ni para juzgar sus textos ni para
  "comprobar" los que salen de aquí.
- **No se reconstruye una voz de memoria.** Si una fuente bloquea, se dice y se pide
  copia-pega. Inventarse cómo escribe alguien es exactamente el fallo que esta skill existe
  para evitar.
- **Nunca se piden contraseñas ni accesos a sus cuentas.** No hacen falta para nada de esto.
  Si el usuario los ofrece, se rechazan y se le explica por qué.

---

## Si no ha publicado nunca nada

Pasa a menudo, sobre todo en un máster. **No es motivo para saltarse el ejercicio.** Pídele
esto:

> "Escríbeme 200 palabras contando qué haces y a quién ayudas, **como se lo contarías a un
> amigo en un bar**. No lo pienses como un texto para publicar: escríbelo de un tirón, con
> las palabras que te salgan, y mándamelo con las faltas que tenga."

Con eso sale un **primer manual, provisional**. Y hay que llamarlo así en la primera línea:
con una sola muestra no se pueden observar arranques que se repiten, cierres habituales ni
registro por canal, así que esos campos van con `Sin evidencia suficiente` y punto. No lo
vendas como el manual definitivo. Lo que sí es: **su** voz y no la de nadie más, que es lo
que hace falta para empezar. Dile que vuelva cuando tenga 10 piezas publicadas.

Trucos para que salga bien:
- **Que lo escriba de un tirón y no lo relea.** Un texto repasado tres veces ya no es su voz
  espontánea: es su voz con miedo.
- Si le cuesta escribir, **que lo mande en un audio y lo transcriba**. Su voz hablada suele
  ser más suya que la escrita.
- **Mensajes de WhatsApp a clientes** valen perfectamente como corpus si escribe bien ahí.
  Muchísima gente escribe mejor en WhatsApp que en LinkedIn, y no lo sabe.

---

## Modo prácticas (último recurso)

Solo si no tiene textos propios **y tampoco quiere escribir las 200 palabras**: usa
`ejemplos/corpus-turnos.md`, que viene dentro de esta skill. Son 12 piezas publicadas de un
fundador inventado, con una voz suficientemente marcada como para hacer las tres fases.

**Cuando lo uses, dilo claro:** ese corpus está inventado, y el manual que salga describe la
voz de alguien que no existe. Sirve para aprender el método y **no sirve para publicar
nada**. En este modo, el paso 1 del test de la mentira sí se puede ejecutar (las muletillas
están en el archivo), pero el resultado no es utilizable — dilo con esas palabras.

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| Solo tiene 3 o 4 piezas | Haz el manual igual, llámalo "hipótesis de voz" en la primera línea y marca los campos vacíos. Dile que vuelva cuando tenga 10 |
| Sus piezas son de un solo canal | Extrae la voz igual, pero escribe en el manual "sin evidencia de registro por canal". No inventes cómo escribiría en Instagram alguien que solo ha escrito en LinkedIn |
| El corpus no tiene ninguna opinión discutible | No lo rellenes de relleno. Escríbelo tal cual y díselo: es el hallazgo más útil del análisis |
| Las piezas del corpus están escritas con IA | Pregúntaselo directamente: "¿alguno de estos lo escribiste con ayuda de IA?". Si dice que sí, esos se apartan. Extraerle la voz a sus textos de ChatGPT es cómo se queda alguien atrapado sonando a ChatGPT para siempre |
| LinkedIn bloquea la lectura | Es lo normal. Pide copia-pega o la exportación oficial. No supongas lo que habría |
| Todas las piezas salen igual entre canales | Vuelve al paso 3 de la fase 2: estás partiendo de la primera pieza en lugar de la idea. Tira lo escrito y rehazlo desde la idea |
| El guardián lo aprueba todo | No está leyendo el manual: está opinando. Oblígale a citar el campo concreto en cada filtro. Si no cita, no juzga |
| El guardián lo rechaza todo | Mira si el manual está lleno de campos incomprobables ("tono cercano"). Si es así, el problema está en la fase 1, no en el texto |
| Pide las cinco piezas de golpe | Avisa una vez de lo que va a pasar y luego hazlo, volviendo cada vez a la idea original. Al entregar, di cuáles crees que han salido flojas |

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
