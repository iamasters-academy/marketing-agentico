---
name: me-recomienda-la-ia
description: Diagnostica por qué no apareces en ChatGPT, Perplexity y Gemini, y te da una nota de 0 a 100 con las cuatro razones posibles. Tres las comprueba sola en tres minutos —si los bots de IA pueden leer tu web (robots.txt), si existes como entidad en Wikidata y en las fuentes que citan los modelos, y si tu texto cumple los umbrales de citabilidad—, todo comparado con tus competidores. Solo la cuarta, el share of model, necesita diez minutos tuyos, y si las otras ya explican el cero te ofrece saltártela. Para visibilidad de marca en buscadores con IA, GEO y AEO.
---

# /me-recomienda-la-ia — Tu línea base en los buscadores con IA

Cada vez más gente ya no busca: pregunta. Y cuando pregunta *"¿cuál es el mejor {{lo que tú
vendes}}?"*, sale una lista de tres o cuatro nombres. **O estás en esa lista, o no existes en
esa conversación.**

Casi nadie sabe si está: el **45%** de los responsables de marketing no puede medir con precisión
la visibilidad de su marca en las respuestas de IA *(encuesta de Semrush a responsables de
marketing, junio de 2026)*. Y el número **no se compra**: los tres buscadores tienen plan
gratuito, así que esto se mide hoy sin gastar un euro.

Esta skill hace dos cosas: **te da tu número, con fecha**, y **te da el plan**.

**Disparadores:** "/me-recomienda-la-ia", "¿salgo en ChatGPT?", "cómo me menciona la IA",
"visibilidad en IA", "GEO", "SEO para ChatGPT", "quiero que la IA me recomiende", "share of
model", "mide mi marca en Perplexity", "por qué la IA recomienda a mi competencia".

> **Cómo se llama esta skill.** En **Claude Code** y **Cowork**: `/me-recomienda-la-ia`.
> En **Claude.ai** no hay comandos con barra — pídelo con palabras y se activa
> sola; si no la coge, nómbrala: *"usa la skill me-recomienda-la-ia"*.

---

## Antes de empezar

**Busca el perfil antes de saludar** — `references/_arranque.md`. El fichero es
`perfil-marca.md`. Si no hay, modo exprés de tres preguntas y adelante: **nunca mandes a nadie a
ejecutar otra skill primero**. Si el perfil trae `## Correcciones`, léelas: ahí es donde otra
skill pudo haber desmentido a un competidor.

**Opcional, y mejora el resultado:** si existe un informe de `/el-hueco`, léelo — trae los
competidores ya comprobados uno a uno. **Sin él no pasa nada:** los compruebo yo abriendo sus
webs (`references/_investigar.md`). Lo único que se pierde es un par de minutos.

**Mira si tienes navegador.** Si entre tus herramientas hay alguna de control de navegador
(nombres con `chrome`, `browser`, `navigate`, `computer`), ve a
`references/protocolo-de-captura.md` → *"Con navegador"*: las preguntas las lanzas tú y el
usuario no pega nada. **Si no la tienes, no lo menciones nunca.** La skill funciona igual y
nadie tiene que sentir que le falta algo.

**Y di lo que cuesta, antes de pedir nada:**

> "Diez minutos tuyos: **tres pegadas, una por buscador**. Todo lo demás lo hago yo — quién sale
> en tu lugar, quién publica los rankings de tu sector y qué se está indexando con tu nombre.
>
> Empezamos con una sola pregunta en un solo buscador para que veas de qué va. Dos minutos."

**No pidas permiso para la microdemo: hazla.** Y para en seco cuando toque esperar su respuesta.

---

## Las cinco palabras (dilas al principio, sin que te las pidan)

El usuario puede ser alguien de marketing que no ha tocado la IA en su vida. Suelta estas cinco
definiciones en el primer mensaje largo, en una línea cada una, y no vuelvas a dar por supuesto
ningún término técnico. Cada palabra rara que aparezca después, la explicas al vuelo.

> - **Motor** = ChatGPT, Perplexity o Gemini. Los tres buscadores con IA que vamos a medir.
> - **Share of model** = de las respuestas que medimos, en qué porcentaje sale tu marca.
> - **Sesión limpia** = chat nuevo, sin haber iniciado sesión o con la memoria desactivada,
>   para que el buscador no te reconozca.
> - **Mapa de fuentes** = las páginas web que el buscador enseña como respaldo de lo que dice.
>   De ahí sale tu plan.
> - **Línea base** = tu número de hoy, con fecha, para poder compararlo dentro de tres meses.
> - **Crawler** = el robot que lee tu web para el buscador. GPTBot es el de ChatGPT. Si lo tienes
>   bloqueado, no sales, y no hay más que hablar.
> - **Entidad** = que el buscador sepa que tu empresa existe como cosa concreta, y no solo que
>   tenga tu web indexada. Son dos cosas distintas y la segunda no implica la primera.

---

## Los tres minutos que van antes de todo

**Ejecuta esto ANTES de pedirle nada.** Sigue `references/medir-sin-preguntar.md`, que trae los
umbrales, las tablas y cómo se puntúa cada capa.

Cuando alguien no aparece en ChatGPT hay cuatro razones posibles, y **tres se descubren sin que
el usuario mueva un dedo**:

| | Capa | Qué contesta | Cuánto tarda |
|---|---|---|---|
| **A** | **Acceso** | ¿Le pueden leer los bots de IA? Se lee su `robots.txt` y el de sus competidores | 30 s |
| **B** | **Entidad** | ¿Existe en las fuentes de las que salen los hechos? Wikidata, Wikipedia, nicho, Reddit, YouTube, LinkedIn | 1 min |
| **C** | **Citabilidad** | ¿Su texto se puede citar, o está escrito para persuadir a quien ya está leyendo? | 1 min |
| **D** | **Menciones** | ¿Le nombran? Esta es la única que necesita al usuario | 10 min suyos |

**Enséñale A, B y C antes de mandarle a copiar y pegar.** Tres minutos de trabajo tuyo compran
toda la credibilidad de la sesión: llega a la parte manual sabiendo ya por qué no aparece.

> **El atajo honesto, y hay que ofrecerlo.** Si A, B o C ya explican el cero —su `robots.txt`
> bloquea `GPTBot`, no existe en Wikidata, su web no tiene un solo bloque citable—, **dilo y
> ofrécele saltarse la capa D**:
>
> *"Con esto ya sé por qué no apareces, y no hace falta que dediques diez minutos a
> confirmarlo. ¿Lo hacemos igual para tener la línea base con fecha, o pasamos directamente al
> plan?"*
>
> Que elija él. Lo que no se hace es cobrarle diez minutos de copiar y pegar para llegar a una
> conclusión que ya estaba sobre la mesa.

---

## Minuto cinco: la microdemo

Solo si vais a hacer la capa D. Lo único que evita el abandono es que vea **su** número antes de
que le pidas trabajo. Una pregunta, un buscador, resultado inmediato. No expliques el método:
enséñaselo.

### Paso 0 — La sesión limpia, y sí, se comprueba

**Es el fallo que no se ve.** Si el buscador lleva meses oyéndole hablar de su negocio, le va a
nombrar su marca por educación. Sale un share of model estupendo y falso, y nadie lo detecta
después. **No le des la pregunta hasta que confirme los tres pasos.**

> 1. **Ventana de incógnito** (Cmd+Shift+N en Mac, Ctrl+Shift+N en Windows) y **sin iniciar
>    sesión**.
> 2. Si el buscador te obliga a entrar: **chat temporal**, y en Ajustes **memoria y
>    personalización desactivadas** mientras dure esto.
> 3. **Chat nuevo para cada pregunta.** No encadenes: la segunda respuesta se contamina con la
>    primera.

**La comprobación es lo que de verdad lo arregla.** En esta pregunta no has dado tu nombre, así
que la respuesta te dice si la sesión estaba limpia:

| Lo que ves en la respuesta | Qué significa |
|---|---|
| No te nombra ni a ti ni a tu marca | Sesión limpia. Adelante |
| **Te nombra a ti o a tu marca** | **Casi seguro que la sesión está sucia.** Repite en incógnito de verdad. Si al repetir desapareces, la primera respuesta no valía |
| No te nombra, pero usa tu ciudad, tus sectores o tus palabras sin que se las hayas dado | Memoria activa. Mismo caso: repite |

**La excepción, dila tú antes de que la diga él:** si su marca es conocida de verdad, puede
aparecer legítimamente. Se distingue en treinta segundos — **que pegue la misma pregunta en un
buscador donde nunca haya entrado con su cuenta**. Si allí también sale, es visibilidad. Si no,
era un espejo.

### La pregunta y la tabla

La primera del set, la más pura: alguien que no le conoce pidiendo una recomendación. Se la das
en un bloque de código, con la cabecera de vuelta, y le pides **una sola respuesta**.

Cuando la pegue, enséñale la tabla en pequeño —¿sale?, quién sale, qué fuentes cita— y el
número. Y **avisa de lo que no es**: una respuesta no es un share of model, sirve para ver la
mecánica.

### La respuesta a "¿no lo puedes hacer tú?"

Va a llegar, y es la pregunta más razonable del día. Tenla escrita:

> "No, y te explico por qué. ChatGPT, Perplexity y Gemini no son webs que yo pueda abrir y usar:
> son productos con cuenta y con sesión, y no puedo escribir en el chat de otro asistente y leer
> lo que responde. Tampoco vale su API: la app añade encima su propia capa de búsqueda y de
> personalización, y puede estar sirviendo otro modelo. **Una medición por API mide la API, no a
> tu cliente.**
>
> Así que hay una parte que solo puedes hacer tú, y la he dejado en lo mínimo: **tres pegadas,
> diez minutos**. Todo lo demás lo hago yo — y de hecho ya lo he hecho: si te acuerdas, las tres
> tablas que acabas de ver salieron sin que me dieras nada. **Esto es la cuarta parte del informe,
> no el informe.**"

---

## La tanda: tres preguntas, una pegada por buscador

**Con tres preguntas se responde "¿aparezco o no?".** Salen del perfil, en el idioma y el país
de su cliente, siguiendo `references/banco-de-preguntas.md`:

| # | Qué mide | ¿Puntúa? |
|---|---|---|
| 1 | **Recomendación directa.** Alguien pide que le recomienden. La consulta más pura | Sí |
| 2 | **El problema, sin nombrar la categoría.** Su cliente no sabe cómo se llama lo que vende: describe su dolor. Es la que casi nadie prueba y la que más sorprende | Sí |
| 3 | **Su marca por su nombre.** No mide visibilidad: mide **exactitud** — qué acierta el modelo, qué se inventa y con quién le confunde | **No** |

**El denominador, sin trampa:** 3 preguntas × 3 buscadores = **9 respuestas lanzadas, 6
puntuables**. La 3 no entra: si le das el nombre al motor, va a hablar de ti. Eso no mide
visibilidad, mide que sabes escribir tu propia marca.

**Y lo que se pierde con la versión corta, dicho antes y no después:** con 6 respuestas
puntuables sabes **si apareces o no**, y eso es firme —un cero es un cero—. Lo que **no** sabes
es en qué orden va tu competencia ni cuál es el mapa de fuentes completo. Para eso hacen falta
más preguntas: están en `references/banco-de-preguntas.md` y se ofrecen **al final**, cuando ya
haya visto que esto funciona.

### Cómo se pide: un bloque, una pegada

**Un mensaje de ida y uno de vuelta por buscador.** Nada de ir pregunta a pregunta: eso es lo
que convertía esto en cuarenta minutos.

> "Abre **{{buscador}}** en incógnito. Lanza estas tres en **un chat nuevo cada una** y pégamelas
> todas juntas en un solo mensaje:
>
> ```
> 1. {{pregunta 1}}
> 2. {{pregunta 2}}
> 3. {{pregunta 3}}
> ```
>
> Delante de cada respuesta, una línea así:
> `--- {{buscador}} · pregunta 1 · {{fecha}} · fuentes: sí/no ---`
>
> **Las respuestas enteras, sin resumir.** Los adjetivos y el orden de la lista son la mitad del
> análisis. Y si el buscador enseña enlaces, cópialos: de ahí sale tu plan."

- **En el primer buscador solo quedan la 2 y la 3**, porque la 1 ya la tienes de la microdemo.
- **Enséñale las tres preguntas antes de que abra ninguna pestaña** y pregunta si son las que
  haría su cliente. Corregirlas cuesta un minuto; rehacer la tanda, diez.
- Si un buscador le corta por el tope del plan gratuito, **para y anótalo**. Se mide con dos y se
  escribe en el informe. Es un dato, no un fracaso.

---

## Lo que hago yo, sin pedirte nada

Además de las capas A, B y C, mientras pega —o antes, si tarda— completas el resto del informe.
**Nada de esto se le pregunta.** Sigue `references/_investigar.md` y ve contando lo que
encuentras según lo encuentras.

| Qué busco | Para qué sirve en el informe |
|---|---|
| **Quién publica los rankings del sector** (`mejores {{categoría}} {{año}}`) y si él aparece | El mapa de fuentes y el plan del mes |
| **Sus competidores de verdad**, abriendo su web uno a uno | La tabla de "quién sale cuando tú no sales" — y evita medir contra un fantasma |
| **Qué se indexa con su nombre** | "Lo que el modelo cree saber de ti" ← ver abajo |
| **Directorios, foros y YouTube** de su categoría | Dónde existe la conversación… y dónde no existe |

### La comparación que hay que hacer siempre

**Todo lo de las capas A, B y C se mide también en sus competidores.** Un `robots.txt` propio no
dice gran cosa; una tabla con su columna al lado de la de los tres competidores dice el informe
entero. Lo mismo con Wikidata: *"de los cuatro, el único que existe como entidad es el que sale
en las respuestas"* es una frase que no necesita explicación.

Es exactamente lo mismo que hace `/el-hueco` con las promesas, aplicado a la infraestructura.

### La vía rastreable: lo que los modelos "creen saber" suele estar en la web abierta

**Busca su nombre de marca en un buscador normal y lee el resumen que devuelve.** Muchas veces
es literalmente el mismo error que suelta el buscador con IA, porque sale del mismo sitio: **lo
poco que hay indexado**.

En la prueba real del kit, buscar el nombre de la empresa devolvió un resumen que le atribuía
**cuatro herramientas no-code que no usa** — justo la casilla de la que huyen sus clientes. El
mismo invento apareció después en Perplexity. **Ese hallazgo salió de una búsqueda normal, no de
pegar nada.** En la misma sesión, la búsqueda destapó que un solo sitio del mapa de fuentes tenía
**ocho artículos distintos** cubriendo el embudo entero de la categoría.

> **Si no encuentras nada con su nombre, eso también es el hallazgo.** *"Solo hay dos URLs
> indexadas y cero menciones en terceros"* es una frase que explica el informe entero.

---

## El plan: dónde se gana esto de verdad

La parte que no gusta y que hay que decir igual: **tu blog no es el campo de juego.**

En el estudio de Ahrefs sobre 75.000 marcas, las **menciones de tu marca en webs de otros**
correlacionaban **0,664** con la visibilidad, y el **número de páginas de tu web, 0,17**. Dos
matices que van pegados al dato: ese 0,17 mide **cuántas** páginas tienes, no si son buenas; y
**los propios autores avisan de que correlación no es causalidad**.

Y Google cierra el atajo técnico en su documentación oficial:

> "There are no additional requirements to appear in AI Overviews or AI Mode, nor other special
> optimizations necessary."

**Con dos datos basta para el arranque.** Si pide más cifras, están en
`references/datos-geo-2026.md`, con fuente y fecha. No las sueltes todas de golpe: tres
correlaciones seguidas pierden a cualquiera.

El plan se construye siguiendo `references/plan-de-huella.md`, con una regla por encima de todo:

**El plan sale de SU mapa de fuentes, no de un blog de SEO.** Si en su sector no sale Reddit, no
le mandes a Reddit. Y con la honestidad que lo sostiene: que un motor cite un dominio **no
demuestra** que ese dominio sea la causa de a quién recomienda. Es una **hipótesis priorizada**,
sacada de su sector y no de un post genérico. Dilo así y no pierdes ni un gramo de fuerza.

**La línea roja, en voz alta:** cuentas falsas, upvotes comprados y reseñas incentivadas se
detectan y se sancionan —en EE. UU. por la regla de la FTC (16 CFR Part 465), en la UE por la
Directiva Ómnibus, en España vía RDL 24/2021—. **Si lo pide, se le dice que no y por qué.**

### Y separa quién puede hacer cada cosa

El plan termina en dos columnas, porque en una empresa quien hace marketing casi nunca decide
precios ni administra las cuentas:

| Lo puedes hacer hoy tú solo | Necesita el OK de otra persona |
|---|---|
| {{acción}} · {{cuánto tarda}} | {{acción}} · **de quién depende** + el mensaje listo para pedírselo |

---

## La puntuación: un número y cuatro razones

El *share of model* solo, sobre todo cuando es cero, **desmoraliza y no dice qué hacer**. Da
además una nota de 0 a 100 con sus cuatro componentes, porque un 34 con el desglose delante es
un mapa, y un 0% a secas es un jarro de agua fría.

| Capa | Peso | Por qué ese peso |
|---|---|---|
| **A · Acceso** | 25% | Es un interruptor: si está mal, nada de lo demás importa. Y se arregla en diez minutos |
| **B · Entidad** | 30% | El que más pesa. Es lo que más tarda en construirse y lo que decide si el modelo sabe que existes |
| **C · Citabilidad** | 25% | Lo más accionable con lo que ya tiene escrito |
| **D · Menciones** | 20% | **Es el resultado, no la palanca.** No se sube tocándolo: se sube tocando A, B y C |

`references/medir-sin-preguntar.md` trae cómo se puntúa cada capa. Si no habéis hecho la D,
**calcula la nota con las tres primeras renormalizadas y dilo**: *"34 sobre 100 midiendo tres de
las cuatro capas"*. Nunca rellenes una capa que no has medido.

**Y explica el peso de la D en voz alta**, porque el usuario vino a por ese número y va a
extrañarse de verlo en último lugar:

> "Tu share of model es el termómetro, no la enfermedad. Ponerlo al 20% no es quitarle
> importancia: es que no se sube mirándolo. Se sube arreglando las otras tres."

---

## Lo que entregas

Tres piezas, en este orden. **Confirma las conclusiones en el chat antes de generar el HTML.**

### 1. Una página — la que se lleva a una reunión

El informe completo es correcto y es demasiado largo para dirección. Escribe también esto, y
escríbelo primero:

```markdown
## {{negocio}} en los buscadores con IA · {{fecha}}

- **Nota GEO: {{X}}/100** · Acceso {{X}} · Entidad {{X}} · Citabilidad {{X}} · Menciones {{X}}
- **Te pueden leer:** {{sí / no, y qué bot está bloqueado}}
- **Existes como entidad:** {{sí / no — y quién de tus competidores sí}}
- **Share of model: {{X}}%** ({{apariciones}} de {{puntuables}} respuestas) · ChatGPT {{X}}% · Perplexity {{X}}% · Gemini {{X}}%
- **Quién sale en tu lugar:** {{3 nombres}} — y qué tienen en común
- **Lo que el modelo cree saber de ti:** {{una frase: no te conoce / se inventa X / te confunde con Y}}
- **Esta semana:** {{1-2 acciones, y que la primera sea de la capa A si hay algo bloqueado}}
- **Volvemos a medir el {{fecha, 60-90 días}}**, con las mismas preguntas
- **Letra pequeña:** {{N}} respuestas, un solo día, {{país}} y {{idioma}}. Foto con margen, no marcador
```

### 2. El informe completo

```markdown
# ¿Me recomienda la IA? · {{negocio}}
_{{fecha}} · nota GEO {{X}}/100 · {{N}} preguntas × {{M}} motores = {{N×M}} respuestas lanzadas, {{puntuables}} puntuables · generado con /me-recomienda-la-ia_

## Tu nota, y de dónde sale
| Capa | Nota | Qué la baja |
|---|---|---|
| A · ¿Te pueden leer? | {{X}}/100 | {{bots bloqueados, o "nada: todo abierto"}} |
| B · ¿Existes como entidad? | {{X}}/100 | {{dónde no estás}} |
| C · ¿Tu texto es citable? | {{X}}/100 | {{qué umbral falla}} |
| D · ¿Te nombran? | {{X}}/100 | {{el share of model}} |

## A · ¿Te pueden leer? — el interruptor
| Bot | {{negocio}} | {{comp 1}} | {{comp 2}} | {{comp 3}} |
|---|---|---|---|---|
| GPTBot · OAI-SearchBot · ClaudeBot · PerplexityBot · Google-Extended | ✅/❌ | … | … | … |

{{y la frase que lo resume: "de los cuatro, ninguno ha tocado su robots.txt para la era de la IA"}}

## B · ¿Existes como entidad? — de dónde saca el modelo los hechos
| Fuente | {{negocio}} | {{competidores}} | Qué significa |
|---|---|---|---|
| Wikidata · Wikipedia · nicho · Reddit · YouTube · LinkedIn | | | |

{{el dato de Ahrefs: YouTube correlaciona 0,737 con las citas de IA; los backlinks 0,266}}

## C · ¿Tu texto es citable? — medido sobre tus tres páginas principales
{{tabla con el umbral, lo que da su web y el veredicto. Y UN párrafo suyo real reescrito para
que se vea la diferencia}}

## D · Tu línea base de menciones
Share of model global y por motor · posición media cuando aparece · estabilidad

## Quién sale cuando tú no sales
| Marca | Apariciones | En qué motores | Cómo la describen (literal) |

## Cómo te describen a ti
{{adjetivos textuales, entrecomillados. Si no apareces: dilo y punto}}

## Lo que el modelo cree saber de ti
{{de la pregunta 3: qué acierta, qué se inventa, con qué te confunde}}
{{+ lo que devuelve la búsqueda web con su nombre — la vía rastreable}}

## Mapa de fuentes — esto es tu plan
| Dominio | Veces citado | En qué preguntas | ¿Estás tú ahí? |

## Plan
### Esta semana · ### Este mes · ### Vuelves a medir el {{fecha}}
### Quién puede hacer qué (las dos columnas)

## Lo que este informe NO dice
{{tamaño de la muestra, variabilidad, país e idioma, qué modelos}}
```

### 3. El HTML con sus colores

`references/_entregable.md`, al pie de la letra. Los colores salen del perfil
(`## Mi identidad visual`); si no están, de su web; si no hay web, se preguntan **dos colores**
y ya. **Y lleva siempre el diario de investigación**: qué buscaste, dónde, qué salió y **qué no
encontraste**. En esta skill ese bloque es media entrega — es todo el trabajo que él no ha
tenido que hacer.

### Al terminar: deja el rastro

Si has descubierto algo que contradice el perfil —un competidor que no lo es, un servicio que
el mercado te atribuye y no das, unos colores que no estaban— **escríbelo en la sección
`## Correcciones` de `perfil-marca.md`**:

```markdown
- **{{fecha}} · /me-recomienda-la-ia:** {{qué se descubrió y qué invalida}}
```

---

## Cuatro reglas que no se negocian

**1. Si sale 0, se escribe 0.** Un share of model del 0% es habitual y esperable en negocios
pequeños o nuevos, y no es un fracaso: es la línea base. Maquillarlo destruye el único valor del
ejercicio, que es poder comparar dentro de tres meses.

**2. Una mención que no es una aparición no cuenta.** Si el motor nombra a la persona por otra
cosa —su comunidad, su podcast, su antiguo trabajo— **eso no es que aparezca su empresa**, y
contarlo es el primer paso para maquillar el informe. Pasó en la prueba real: el modelo nombraba
al fundador por su comunidad de formación y añadía que *"son cosas distintas y conviene no
mezclarlas"*. No se contó como aparición — y fue el hallazgo más accionable del día, porque
señalaba el puente que faltaba. **Se explica por qué no cuenta, y se convierte en acción.**

**3. Las citas de adjetivos son literales.** Si el motor dice "una opción económica pero con
menos soporte", eso se copia tal cual, entre comillas. Parafrasear aquí es perder el dato.

**4. El informe lleva siempre su sección de límites.** Cuántas respuestas, qué día, qué país,
qué idioma, qué modelos. Un share of model sin esa letra pequeña es una cifra suelta.

---

## 🔍 Test de la mentira

Cinco comprobaciones, en voz alta y delante del usuario. **Las dos primeras son nuevas y son las
más fáciles de verificar: hazlas siempre.**

1. **Abre tú mismo tu `robots.txt`.** Escribe `tudominio.com/robots.txt` en el navegador. Lo que
   yo te he dicho tiene que estar ahí, palabra por palabra. Es la comprobación más rápida del kit
   y la que cierra cualquier discusión: **o el bot está en el fichero o no está.**
2. **Busca tu marca en Wikidata.** Entra en `wikidata.org`, busca tu nombre y mira si sale una
   entidad tuya. Si te he dicho que no existes, no debería salir nada. **Y busca también al
   competidor que sí sale en las respuestas de IA** — ahí es donde se entiende el informe.
3. **¿Eso que has contado como aparición lo es?** Relee cada mención. Que nombren a la persona,
   a un producto que ya no vende o a una marca parecida **no es aparecer**. Si al quitar las
   dudosas el número cambia, el número bueno es el de después.
4. **Abre tres de las fuentes que citó el motor.** ¿Existen, dicen lo que el resumen dice y
   hablan de su categoría? Un motor puede citar una página que **no sostiene** lo que afirma —
   pasó en la prueba real, con su propia web. Si alguna no cuadra, todo lo que dependa de ella
   se degrada a hipótesis.
5. **Cuenta cuántas preguntas llevaban su nombre.** Tiene que ser **una**, y no puntúa. Si son
   más, no has medido visibilidad: has medido ego. Rehaz la tanda.

### La estabilidad, sin engañarnos

El manual pedía repetir tres preguntas a las 24-48 horas. **Nadie lo hace**, y es mejor decirlo
que dejarlo como deber pendiente que no se cumple. Así que:

- **Lo que sí se hace y cuesta cero:** la misma pregunta ya se ha lanzado en tres buscadores. Si
  los tres devuelven listas distintas —lo normal—, **el ranking de competidores baila** y eso va
  escrito en el informe. No es lo mismo que repetir en el mismo motor, pero es honesto y sale
  gratis.
- **Lo que de verdad importa y va al calendario hoy:** la re-medición a **60-90 días**, con las
  mismas preguntas y el mismo protocolo. Si se cambian las preguntas, la comparación no vale.
- **Opcional, y marcado como opcional:** repetir dos preguntas pasados dos días. Cinco minutos.
  Si no se hace, el informe dice **"estabilidad: no comprobada"** — y eso rebaja la confianza del
  ranking, no la del cero. Un cero sigue siendo un cero.

**Lo que este test NO comprueba** —dilo, porque importa—: que esas preguntas sean las que de
verdad hace su mercado (son una hipótesis suya); que su muestra represente a todos los usuarios
(el país, el idioma, el modelo, el historial y la hora cambian la respuesta); que aparecer se
traduzca en ventas; ni que el plan vaya a funcionar, porque la relación entre menciones en
terceros y visibilidad es **correlación**, y los autores de esos estudios son los primeros en
decirlo. Esto da una **línea base medida y un plan razonado**, no una garantía.

---

## Lo que NO se hace

- **No se automatiza a escala con bots ni scrapers.** Si hay navegador, se conduce como lo haría
  él: su sesión, sus preguntas, una cada vez y con él delante. Nada de tandas masivas ni de
  saltarse verificaciones — **si aparece un "confirma que eres humano", se para y se le pasa el
  turno**.
- **No se inventa lo que un motor "habría dicho".** Si solo pudo medir dos de los tres, el
  informe dice dos.
- **No se prometen plazos ni posiciones.** Las citas de Reddit en ChatGPT pasaron de cerca del
  60% a principios de agosto de 2025 a alrededor del 10% a mediados de septiembre. Nadie
  garantiza un puesto en una respuesta que se recalcula cada vez.
- **No se compran menciones, reseñas ni votos.** Ni aunque lo pida. Se explica por qué y se
  ofrece la vía legítima.
- **No se recomienda gastar dinero.** Las herramientas GEO de pago automatizan esto a escala: si
  ya paga una, que la use; si no, para tres preguntas no hace falta nada.
- Si una fuente bloquea, un motor no está disponible en su país o no muestra enlaces: **es un
  dato, no un obstáculo que sortear**. Se dice. Y que no enseñe enlaces **no prueba** que no haya
  buscado.

Todas las cifras que cita esta skill están en `references/datos-geo-2026.md`, con fuente, fecha
y los caveats de sus autores. **Si vas a decir un número, sácalo de ahí.**

---

## Si el usuario no tiene negocio

Funciona igual, y además es un ejercicio precioso. Con una marca de prácticas —la de `/mi-marca`
si la tiene, y si no la montas tú en dos líneas: *"Turnos", una app de cuadrantes de personal
para bares pequeños, 29 €/mes*— **el sector es real**: las preguntas son reales, los buscadores
responden de verdad y nombran a competidores que existen.

Lo único ficticio es su marca, así que va a sacar **0% de share of model**. Perfecto: es
exactamente lo que le pasa a la mayoría de negocios pequeños el primer día, y el mapa de fuentes
sale igual de real y de útil.

**Dilo claro cuando pase:** *"tu marca no existe, por eso sale 0. Lo que sí es real es todo lo
demás: quién sale, con qué palabras y de dónde lo saca."*

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| El motor le nombra su marca en la microdemo | Sesión sucia casi seguro: memoria o personalización activadas, o preguntas encadenadas. Que repita en incógnito. Si ahí desaparece, la primera respuesta no valía |
| Sale 0% en los tres motores | Resultado habitual y esperable en negocios pequeños y nuevos. No lo suavices: escríbelo como línea base y pasa al plan. Vale más un 0 medido que un "estamos trabajando la visibilidad" |
| Un motor no muestra fuentes | Anótalo como "sin fuentes" y déjalo ahí. **No deduzcas que no ha buscado**: solo que no los enseña. El mapa se construye con los motores que sí los den |
| Los tres motores dan listas muy distintas | No es un fallo, es la naturaleza del sistema. Baja la confianza del ranking en el informe con una frase: "el orden de competidores es orientativo" |
| Topa con el límite del plan gratuito | Se reparte en dos ratos o se mide con dos motores, y se escribe en el informe. Nunca se rellena lo que falta |
| Pega las respuestas resumidas | Pídele **una** que falte entera y explica por qué: los adjetivos y el orden son la mitad del análisis. No le hagas repetir las tres |
| El modelo simplemente no le conoce, y no se inventa nada | Es el caso más común y no ha hecho nada mal. Díselo: el hallazgo vistoso no sale siempre, y "no te conoce" ya orienta el plan entero |
| Pide "salir el primero en ChatGPT en un mes" | Dile que no se puede garantizar y por qué (Reddit: del 60% al 10% de las citas en seis semanas). Ofrécele lo que sí: línea base, plan y nueva medición en 60-90 días |
| Pide comprar reseñas o crear cuentas que hablen bien de él | No. Explica la FTC y la Directiva Ómnibus, y reconduce a la familia A del plan |

---

## Créditos

Las capas A, B y C —la tabla de crawlers de IA por niveles, los pesos de presencia de marca, los
umbrales de citabilidad y el esquema de puntuación— están adaptadas de
**[geo-seo-claude](https://github.com/zubair-trabzada/geo-seo-claude)** de Zubair Trabzada,
publicado bajo licencia MIT (Copyright © 2026 Zubair Trabzada). Ver
`references/medir-sin-preguntar.md`.

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
