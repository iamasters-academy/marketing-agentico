---
name: me-recomienda-la-ia
description: Mide cuántas veces te nombran ChatGPT, Perplexity y Gemini frente a tus competidores y construye el plan para que empiecen a hacerlo. Para visibilidad de marca en buscadores con IA.
---

# /me-recomienda-la-ia — Tu línea base en los buscadores con IA

Cada vez más gente ya no busca: pregunta. Y cuando pregunta *"¿cuál es el mejor {{lo que tú
vendes}}?"*, sale una lista de tres o cuatro nombres. **O estás en esa lista, o no existes en
esa conversación.**

Casi nadie sabe si está. Según una **encuesta a responsables de marketing** publicada por
Semrush en junio de 2026, el **45%** no puede medir con precisión la visibilidad de su marca en
las respuestas de IA, y solo el **9%** tiene herramientas para seguirla en todas las
plataformas. *(Es una encuesta, no el análisis de prompts del mismo informe; no los mezcles —
ver `references/datos-geo-2026.md`, punto 1.)*

Esta skill hace dos cosas: **te da tu línea base** —tu *share of model*, medido, con fecha— y
**te da el plan**. El plan tiene una verdad incómoda dentro, y la vas a leer en la primera
página del informe: esto no lo gana tu blog.

**Disparadores:** "/me-recomienda-la-ia", "¿salgo en ChatGPT?", "cómo me menciona la IA",
"visibilidad en IA", "GEO", "SEO para ChatGPT", "quiero que la IA me recomiende", "share of
model", "mide mi marca en Perplexity", "por qué la IA recomienda a mi competencia".

> **Cómo se activa esta skill.** En **Claude.ai** no hay comandos con barra: pídelo con
> palabras normales y la skill se activa sola. Si ves que no la coge, nómbrala:
> *"usa la skill me-recomienda-la-ia"*. En **Claude Code** sí funciona `/me-recomienda-la-ia`.


---

## Antes de empezar

1. **Busca el perfil de marca.** En Claude Code, el fichero `perfil-marca.md`. En Claude.ai,
   las instrucciones del proyecto. De ahí salen las 20 preguntas del sector.
2. **Si no hay perfil, NO te pares.** Esta skill se puede haber subido sola, sin el resto del
   kit, y dejar al usuario en un callejón sin salida es el peor arranque posible. Hazle estas
   seis preguntas de golpe, en un solo mensaje, y con las respuestas montas un perfil mínimo
   suficiente para continuar:

   > 1. ¿Cómo se llama tu marca?
   > 2. ¿Qué vendes exactamente, en una frase?
   > 3. ¿Quién te compra? (el cliente típico, con su tamaño o su situación)
   > 4. ¿Qué problema le quitas de encima? Dilo con **sus** palabras, no con las tuyas.
   > 5. ¿Dónde vendes? (ciudad, país, online)
   > 6. Dime 2 o 3 competidores que se te ocurran.

   Con eso ya puedes generar las 20 preguntas. Y dilo: *"con esto vamos; si quieres un perfil
   de marca completo que reutilicen las demás skills del kit, existe `/mi-marca`, pero para
   medir hoy no te hace falta."*

   **Si no tiene negocio propio**, ofrécele una marca de prácticas y móntala tú en el momento:
   por ejemplo *"Turnos", una app de cuadrantes de personal para bares y restaurantes pequeños,
   29 €/mes, que compite con Sesame HR, Combo y "el cuaderno de siempre"*. El sector es real,
   así que el ejercicio funciona entero (ver "Si el usuario no tiene negocio", más abajo).

3. **Di lo que esto cuesta, antes de empezar.** No es un botón:

   > "Esto son 20 preguntas en tres buscadores: unas 60 respuestas que tienes que copiar y
   > pegarme tú. Entre 45 minutos y una hora. Hay versión corta de 8 preguntas, unos 20
   > minutos. No hay forma de que lo haga yo por ti: no tengo acceso a ChatGPT, a Perplexity ni
   > a Gemini desde aquí.
   >
   > Y si prefieres verlo antes de comprometerte: hacemos una **microdemo de una sola
   > pregunta** en los tres buscadores. Tres copiapegas, cinco minutos, y te enseño la tabla en
   > pequeño. Luego decides. ¿Microdemo, corta o completa?"

   **Ofrece siempre la microdemo.** El primer resultado que ve el usuario no puede ser una
   factura de una hora de trabajo manual: tiene que ser una tabla suya, aunque sea diminuta.
   Después de la microdemo, casi todo el mundo sigue.

   **Y para en seco después de preguntar.** Espera su respuesta antes de generar nada. No
   sueltes las 20 preguntas en el mismo turno en que le has preguntado qué versión quiere.

4. **Comprueba que puedes buscar en internet.** Lo necesitas para la parte del mapa de fuentes.
   Si no la tienes activada, dilo: el diagnóstico se puede hacer igual —lo pega el usuario—,
   pero el plan saldrá más pobre.

> **Quién hace el trabajo:** la medición la hace el usuario, porque solo él puede abrir esos
> tres buscadores. Yo genero las preguntas, tabulo, calculo, busco en la web y escribo el
> informe. Dilo claro desde el minuto uno en vez de dejar que lo descubra a mitad.

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

---

## El método

Dos partes. La primera te dice dónde estás. La segunda, qué haces con eso.

### Parte 1 — El diagnóstico: tu *share of model*

**Share of model** = de todas las respuestas **puntuables**, en cuántas aparece tu marca. Es tu
cuota de voz dentro del modelo, y es un número que casi nadie de tu sector tiene.

**Cuidado con el denominador, que es donde se equivoca todo el mundo:** de las 20 preguntas,
las 2 de la familia 6 (las que llevan tu nombre) **no puntúan**. Así que 20 preguntas × 3
motores = **60 respuestas lanzadas, de las cuales 54 son puntuables** (18 × 3). El share of
model se calcula sobre 54, no sobre 60. En la versión corta de 8 preguntas: 24 lanzadas, **21
puntuables** (7 × 3). Y las 4 repeticiones del control de calidad **tampoco entran** en el
denominador: se informan aparte.

**Paso 1. Genera las 20 preguntas del sector**, siguiendo `references/banco-de-preguntas.md`.
Salen del perfil de marca y se entregan listas para copiar y pegar, numeradas, una a una.

Seis familias: recomendación directa (5), comparación (4), el problema sin nombrar la categoría
(4), objeción y precio (3), segmento o territorio (2), y tu marca por su nombre (2).

> **La regla que se salta todo el mundo:** 18 de las 20 preguntas **no llevan tu nombre**. Si le
> das el nombre al motor, va a hablar de ti. Eso no mide visibilidad: mide que sabes escribir tu
> propia marca. Lo que se mide es la pregunta de quien todavía no te conoce.

**Enséñale las 20 y pregunta si son las que haría su cliente** antes de que se ponga a pegar.
Corregirlas cuesta un minuto; rehacer la tanda, una hora.

**Paso 2. La captura.** Sigue `references/protocolo-de-captura.md` al pie de la letra. Lo
crítico:

- **Chat nuevo para cada pregunta**, en modo temporal o incógnito, con la memoria y la
  personalización desactivadas. Si el motor lleva meses oyéndole hablar de su negocio, le va a
  nombrar su marca por educación, no por visibilidad.
- **Pegar la respuesta entera**, sin resumir. Los adjetivos y el orden de la lista son la mitad
  del análisis.
- **Repetir 4 de las 20** en un chat nuevo. Estos sistemas no son deterministas: la repetición
  es el control de calidad, y si sale distinto, eso se escribe en el informe.

**Paso 3. Tabula y calcula.** Por cada respuesta: si apareces, en qué posición, con qué
adjetivos, qué competidores nombra y qué fuentes cita. De ahí salen las cuatro cifras del
informe y —lo más valioso— el **mapa de fuentes**.

### Parte 2 — El plan: dónde se gana esto de verdad

Aquí va la parte que no gusta y que hay que decir igual: **tu blog no es el campo de juego.**

En el estudio de Ahrefs sobre 75.000 marcas (mayo de 2025), el número de páginas de un sitio
correlacionaba **0,17** con la visibilidad en AI Overviews, mientras que las menciones de marca
en la web correlacionaban **0,664** — el triple que los backlinks (0,218). En el estudio de
diciembre de 2025 de la misma casa, las menciones en YouTube fueron la señal más correlacionada
(≈0,737). **Los propios autores avisan de que correlación no es causalidad**, y conviene
repetirlo: las marcas grandes están en todas partes a la vez.

**Y dos matices que hay que decir para no pasarse de frenada:** el 0,17 mide **número de
páginas**, no calidad ni utilidad de lo que publicas — un blog bueno y pequeño no es lo mismo
que un blog inflado. Y tu web sigue siendo importante, aunque para otra cosa: es **la fuente de
la que todos los demás copian tus datos** (ver `references/plan-de-huella.md`, familia E). Lo
que dicen los datos no es "tu blog no sirve", es "publicar más páginas, por sí solo,
correlacionó poco".

Y Google, en su documentación oficial, cierra la puerta al atajo técnico:

> "There are no additional requirements to appear in AI Overviews or AI Mode, nor other special
> optimizations necessary."

Así que el plan se construye sobre **huella en sitios de terceros**, siguiendo
`references/plan-de-huella.md`. Con una regla por encima de todas:

**El plan sale de SU mapa de fuentes, no de un blog de SEO.** Si en sus 60 respuestas se repiten
cuatro dominios, esos cuatro encabezan el plan. Si en su sector no sale Reddit, no le mandes a
Reddit.

*Con una honestidad que hay que mantener:* que un motor cite un dominio no demuestra que ese
dominio sea **la causa** de a quién recomienda. El mapa de fuentes es la mejor lista de
prioridades disponible —sale de su sector y no de un blog genérico—, pero es una **hipótesis
priorizada**, no una relación causal probada. Dilo así y no pierdes nada de fuerza.

Y la línea roja, que se dice en voz alta: **esto no se puede falsear.** Cuentas falsas, upvotes
comprados y reseñas incentivadas se detectan y se sancionan —en EE. UU. por la regla de la FTC
(16 CFR Part 465, en vigor desde el 21 de octubre de 2024, hasta 53.088 $ por infracción,
máximo vigente a agosto de 2026); en la UE por la Directiva Ómnibus, en España vía RDL
24/2021—. Esta skill construye huella legítima.
**Si el usuario pide lo otro, se le dice que no y por qué.**

---

## Lo que entregas

```markdown
# ¿Me recomienda la IA? · {{negocio}}
_{{fecha}} · {{N}} preguntas × {{M}} motores = {{N×M}} respuestas lanzadas, {{puntuables}} puntuables · generado con /me-recomienda-la-ia_

## Tu línea base
- **Share of model global:** {{X}}% ({{apariciones}} de {{respuestas puntuables}})
- **Por motor:** ChatGPT {{X}}% · Perplexity {{X}}% · Gemini {{X}}%
- **Posición media cuando apareces:** {{X}}.ª
- **Estabilidad:** de las 4 preguntas repetidas, {{X}} devolvieron lo mismo

## Quién sale cuando tú no sales
| Marca | Apariciones | En qué motores | Cómo la describen (literal) |

## Cómo te describen a ti
{{adjetivos textuales, entrecomillados. Si no apareces: dilo y punto.}}

## Lo que el modelo cree saber de ti
{{de las 2 preguntas con tu nombre: qué acierta, qué se inventa, con qué te confunde}}

## Mapa de fuentes — esto es tu plan
| Dominio | Veces citado | En qué preguntas | ¿Estás tú ahí? |

## Plan
### Esta semana ({{1-2 acciones concretas}})
### Este mes ({{2-3 acciones, elegidas por el mapa de fuentes}})
### Vuelves a medir el {{fecha, 60-90 días}}

## Lo que este informe NO dice
{{límites de la muestra, variabilidad, país e idioma medidos}}
```

### Tres reglas que no se negocian

**1. Si sale 0, se escribe 0.** Un share of model del 0% es un resultado perfectamente habitual
y esperable en negocios pequeños o nuevos, y no es un fracaso: es la línea base. Maquillarlo
destruye el único valor del ejercicio, que es poder comparar dentro de tres meses.

**2. Las citas de adjetivos son literales.** Si el motor dice "una opción económica pero con
menos soporte", eso se copia tal cual, entre comillas. Parafrasear aquí es perder el dato.

**3. El informe lleva siempre su propia sección de límites.** Cuántas respuestas, qué días, qué
país, qué idioma, qué modelos, y si la repetición salió estable o no. Un share of model sin esa
letra pequeña es una cifra suelta.

---

## 🔍 Test de la mentira

Tres comprobaciones, en voz alta y delante del usuario:

1. **Repite tres preguntas 24-48 horas después**, en un chat nuevo. ¿Sale lo mismo? Si el
   ranking baila, tu línea base es una **foto con margen**, no un marcador. Escríbelo así.
2. **Abre tres de las fuentes que citó el motor.** ¿Existen, dicen lo que el resumen dice y
   hablan de tu categoría? Un motor puede citar una página que no sostiene lo que afirma. Si
   alguna no cuadra, todas las conclusiones que dependan de ella se degradan a hipótesis.
3. **Cuenta cuántas de tus preguntas llevaban tu nombre.** Si son más de dos o tres, no has
   medido tu visibilidad: has medido tu ego. Rehaz la tanda.

**Lo que este test NO comprueba** —dilo, porque importa—: que esas 20 preguntas sean las que de
verdad hace tu mercado (son una hipótesis tuya); que tu muestra represente a todos los usuarios
(el país, el idioma, el modelo, el historial y la hora cambian la respuesta); que aparecer se
traduzca en ventas; ni que el plan vaya a funcionar, porque la relación entre menciones en
terceros y visibilidad es **correlación**, y los autores de esos estudios son los primeros en
decirlo. Esto te da una **línea base medida y un plan razonado**, no una garantía.

> Si solo hay tiempo para una, que sea la primera.

---

## De dónde salen los datos de verdad

**Esta skill trabaja con datos reales siempre.** No hay dataset sintético y no hace falta: los
tres buscadores tienen plan gratuito, así que cualquiera puede hacer la medición hoy mismo
**sin contratar ninguna herramienta de pago**. Lo que no se promete: que los 60 copiapegas
entren en una sola sentada. Los planes gratuitos tienen topes de mensajes, y algún motor puede
pedir cuenta o no estar disponible en su país. Si aparece un tope, se reparte la captura en dos
ratos o se mide con dos motores, y se escribe en el informe.

### Vía 1 — Lo busco yo (complementaria)

Con búsqueda web activada, mientras el usuario pega, yo puedo:

- Buscar **quién publica las comparativas** de su sector ("mejores {{categoría}} 2026") y
  comprobar si él aparece.
- Revisar los **directorios** que le tocan (G2, Capterra, Trustpilot, Doctoralia, Google Maps,
  App Store… según sector) y si tiene ficha.
- Encontrar los **hilos y foros** donde ya se pregunta por su categoría.
- Ver qué hay en **YouTube** sobre su categoría y sus competidores.

**Lo que no puedo hacer:** consultar ChatGPT, Perplexity o Gemini por él. No tengo acceso a esas
herramientas. Decirlo pronto ahorra un malentendido.

### Vía 2 — Lo pega el usuario (**la principal aquí, y sin complejos**)

Abre los tres buscadores, hace las 20 preguntas, pega las respuestas. Es tedioso, es gratis y es
el único método que produce **su** número. En esta skill no es el plan B: es el plan A.

Los tres tienen plan gratuito a día de hoy. **Los límites concretos cambian cada pocos meses**
—cuántos mensajes, qué modelo, cuántas búsquedas profundas—, así que no los cites de memoria:
que los mire en la página de precios de cada uno en el momento.

### Vía 3 — Herramienta o API, solo si es gratis o ya la tiene

- **Gratis y oficial:** el **informe de IA generativa de Google Search Console**, anunciado el
  3 de junio de 2026. Muestra las **impresiones** de su sitio en AI Overviews y AI Mode.
  **Antes de recomendarlo, avisa de que puede no tenerlo:** Google lo está desplegando "a un
  subconjunto de propietarios de sitios" y "no todas las propiedades tienen acceso". Y aunque
  lo tenga: da impresiones y poco más —**sin clics, sin CTR, sin consultas**—, cubre **solo
  superficies de Google** y exige ser propietario verificado del dominio. Es un termómetro
  complementario, no un sustituto. Nunca lo vendas como "entras y lo tienes".
- **Herramientas GEO de pago** (Semrush AI Toolkit, Ahrefs Brand Radar, Profound, Peec AI…):
  automatizan esto a escala. Si ya paga una, que la use. **Si no, no se la recomiendes:** para
  20 preguntas no hace falta gastar nada.
- **Las API no valen para esto.** Consultar la API de un modelo no reproduce lo que ve un
  usuario en la app: la app añade su propia capa de búsqueda, de personalización y de producto,
  y puede estar usando otro modelo. Una medición por API mide la API, no a tu cliente.

### Lo que NO se hace

- **No se automatiza la consulta a ChatGPT, Perplexity o Gemini con bots ni scrapers.** Va
  contra sus condiciones de uso, y no hace falta: son 60 copiapegas.
- **No se inventa lo que un motor "habría dicho".** Si el usuario solo pudo medir dos de los
  tres, el informe dice dos.
- **No se prometen plazos ni posiciones.** Las citas de Reddit en ChatGPT pasaron de cerca del
  60% a principios de agosto de 2025 a alrededor del 10% a mediados de septiembre: **unos 50
  puntos en seis semanas** (Semrush). Nadie garantiza un puesto en una respuesta que se
  recalcula cada vez.
- **No se compran menciones, reseñas ni votos.** Ni aunque lo pida el usuario. Se explica por
  qué y se ofrece la vía legítima.
- Si una fuente bloquea, un motor no está disponible en su país o no muestra enlaces: **es un
  dato, no un obstáculo que sortear**. Se dice.

Todas las cifras que cita esta skill están en `references/datos-geo-2026.md`, con fuente, fecha
y los caveats de sus autores. **Si vas a decir un número, sácalo de ahí.**

---

## Si el usuario no tiene negocio

Funciona igual, y además es un ejercicio precioso. Con una marca de prácticas —te vale la de
`/mi-marca` si la tiene, y si no la montas tú en dos líneas: por ejemplo "Turnos", una app de
cuadrantes de personal para bares pequeños, 29 €/mes— **el sector es real**: las
preguntas son reales, los buscadores responden de verdad y nombran a competidores que existen.

Lo único ficticio es su marca, así que va a sacar **0% de share of model**. Perfecto: es
exactamente lo que le pasa a la mayoría de negocios pequeños el primer día, y el mapa de fuentes
—qué sitios cita la IA en ese sector— sale igual de real y de útil.

**Dilo claro cuando pase:** *"tu marca no existe, por eso sale 0. Lo que sí es real es todo lo
demás: quién sale, con qué palabras y de dónde lo saca."*

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| El motor le nombra su marca en casi todas las respuestas | Casi seguro que tiene memoria o personalización activada, o va encadenando preguntas en el mismo chat. Que repita 3 preguntas en incógnito y sin sesión. Si ahí desaparece, la primera tanda no vale |
| Sale 0% en los tres motores | Es un resultado habitual y esperable en negocios pequeños y nuevos. No lo suavices: escríbelo como línea base y pasa al plan. Es más útil un 0 medido que un "estamos trabajando la visibilidad" |
| Un motor no muestra fuentes | Anótalo como "sin fuentes" y déjalo ahí. **No deduzcas que no ha buscado**: que no te enseñe los enlaces no prueba que no haya consultado la web, solo que no los muestra. El mapa de fuentes se construye con los motores que sí las den |
| Las respuestas cambian mucho al repetir | No es un fallo, es la naturaleza del sistema. Baja el nivel de confianza del informe y dilo con una frase: "esta medición tiene margen; el ranking de competidores es orientativo" |
| El usuario se cansa a las 25 respuestas | Cierra con lo que hay. Un informe de 25 respuestas bien etiquetado vale; uno de 60 a medias inventar, no. Ajusta los porcentajes a la muestra real y márcalo |
| Pide "salir el primero en ChatGPT en un mes" | Dile que no se puede garantizar y por qué (el dato de Reddit: del 60% al 10% de las citas de ChatGPT en seis semanas). Ofrécele lo que sí: línea base, plan y nueva medición en 60-90 días |
| Pide comprar reseñas o crear cuentas para hablar bien de él | No. Explica la FTC y la Directiva Ómnibus, y reconduce a la familia A del plan, que da resultado antes de lo que cree |

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
