---
name: el-hueco
description: Busca a tus competidores, comprueba uno a uno que lo son, lee sus webs y cruza lo que prometen con las quejas reales de sus clientes. Saca ángulos de posicionamiento con cita textual y con lo que tienes que poder cumplir para usarlos. Para análisis de competencia, diferenciación y estudio de competidores.
---

# /el-hueco — Donde su promesa se rompe, está tu sitio

Un análisis de competencia normal te dice **qué hace tu competencia**. Eso no sirve de
mucho: lo puedes ver tú entrando en su web.

Esto hace otra cosa. Compara **lo que prometen** con **lo que sus propios clientes dicen
que reciben**. La distancia entre esas dos cosas es tu oportunidad. Copiarte la frase es
fácil; sostenerla no, porque para eso tendrían que arreglar su negocio.

**Disparadores:** "/el-hueco", "analiza a mi competencia", "estudio de competidores", "qué
dicen los clientes de mis competidores", "cómo me diferencio de X", "análisis competitivo",
"busca mi hueco de mercado", "por dónde ataco a mi competencia".

> **Cómo se llama esta skill.** En **Claude Code** y **Cowork**: `/el-hueco`.
> En **Claude.ai** no hay comandos con barra — pídelo con palabras y se activa
> sola; si no la coge, nómbrala: *"usa la skill el-hueco"*.

---

## Antes de empezar

**Busca el perfil** siguiendo `references/_arranque.md`. Se llama `perfil-marca.md`. Si no
hay, **modo exprés de tres preguntas y adelante** — nunca mandes a nadie a ejecutar otra
skill antes.

**Si hay informes previos de `/cliente-vivo` o `/abogado-del-diablo`, léelos.** Son
**opcionales**: sin ellos la skill funciona igual, solo que tendrás que deducir de la web
lo que ellos ya traían masticado.

**Y avisa de las dos cosas que van a pasar, antes de que pasen.** En un solo turno:

> "Esto son unos treinta minutos, en dos mitades.
>
> **La primera la hago yo sola:** busco a tus competidores, abro sus webs y saco lo que
> promete cada uno, textual.
>
> **La segunda depende de tu mercado.** Voy a buscar quejas reales de sus clientes, y te
> aviso ya: **si vendes B2B y tu mercado es pequeño, puede que no haya ni una queja pública
> de nadie.** No es un fallo tuyo ni mío — nadie deja reseñas de la consultora que le hizo
> una auditoría. Si pasa, buscaré en otros seis sitios, y si tampoco hay, **eso también es
> un hallazgo** y te explico por qué.
>
> Antes de nada, unas preguntas sobre tu negocio. No sobre ellos."

---

## Las preguntas de negocio — al principio, no al final

Sin esto no puedes rellenar *"lo que tienes que poder cumplir"*, que es el campo que separa
esta skill de un análisis de competencia cualquiera. Antes se preguntaba al final, cuando
el usuario ya esperaba un informe y le sentaba fatal. **Se pregunta ahora**, en el mismo
turno que la lista de competidores. Las cinco de golpe:

> "Cinco preguntas rápidas sobre lo tuyo. De estas respuestas depende qué ángulos te puedo
> entregar y cuáles tengo que tirar a la basura. **Si alguna no la sabes, dime 'no lo sé'**
> — te va a parecer que fallas y es al revés: un 'no lo sé' aquí te ahorra escribir una
> landing entera prometiendo algo que no puedes dar.
>
> 1. ¿Qué puedes demostrar **hoy**, con nombre y cifra? Casos publicados, testimonios
>    firmados, un número que puedas enseñar.
> 2. ¿Publicas precios, aunque sea una horquilla? Sí o no.
> 3. ¿A qué le has dicho que **no** a un cliente en los últimos seis meses?
> 4. ¿Qué prometes hoy que no siempre cumples? Esta es incómoda a propósito.
> 5. ¿Qué parte de lo que vendes depende de una homologación, certificación o tercero que
>    **no controlas**?
>
> Puede que a mitad te haga una o dos más, muy concretas, cuando vea por dónde va el mapa."

La 2 y la 5 son las que más ángulos matan. La 5 mató uno entero en la prueba real: el
usuario no sabía si su empresa podía gestionar bonificaciones de formación, y sin eso no se
puede atacar el "coste cero" de nadie.

---

## Paso 0 — La lista, y comprobar que compiten de verdad

**Los buscas tú.** Con el negocio y el cliente del perfil ya tienes para cuatro o cinco
búsquedas (`references/_investigar.md`). No preguntes quiénes son.

**Después abre la web de cada uno.** Este paso no se salta nunca: en la prueba real del kit,
**dos de tres "competidores" no lo eran**, y ninguna búsqueda lo habría dicho. Abrir la
página, sí.

| Comprobación | Si la respuesta es no… |
|---|---|
| ¿Le vende a **tu mismo comprador**? | Descártalo: comparte palabra clave, no mercado |
| ¿Se disputa **el mismo presupuesto**? | Es adyacente, no competidor |
| ¿Es su **negocio principal**, o una página suelta en otra web? | Sigue siendo peligroso, pero es otro tipo de rival. Dilo |

**Lo que descartes va a `## Correcciones` del perfil**, con fecha y motivo. Si no lo
escribes, la siguiente skill —otro día, otro chat— vuelve a medir contra un fantasma.

**Cuántos: los que haga falta.** El número sale del mercado, no de una plantilla. Antes esta
skill decía tres y se quedaba corta; en la prueba real hicieron falta seis para ver el
patrón. Menos de cuatro verificados es un mapa incompleto y hay que decirlo. Para cuando el
siguiente ya no te diga nada nuevo.

> "He buscado y estos {N} compiten contigo de verdad. He abierto las {N} webs y he
> descartado a {X} porque {motivo}. ¿Te cuadran, o cambias alguno?"

---

## Frente 1 — La promesa

**Esta mitad la haces tú entera, y es lo mejor de la skill.** Seis webs leídas en cuatro
minutos, textual y verificable. Un usuario no lo hace ni en tres horas.

Por cada competidor: **la frase grande** de la home, **los tres argumentos** que más repite,
**a quién dice dirigirse** y **qué precio muestra** o si lo esconde. Todo **textual y
entrecomillado** — parafrasear aquí destruye el ejercicio.

### Con Firecrawl esto vuela

Si tienes herramientas `firecrawl`, úsalas. Si no, la skill funciona igual con búsqueda y
lectura nativas, solo algo más despacio.

| Herramienta | Qué te da aquí |
|---|---|
| `firecrawl_map` sobre su dominio | **Media auditoría en diez segundos:** si tiene blog, si publica precios, cuántos casos de éxito. Sin leer una sola página entera |
| `firecrawl_scrape` con `jsonOptions` | Precios y planes de **varios competidores con la misma estructura**, comparables sin trabajo manual |
| `firecrawl_scrape` normal | Home y página de servicio, para las frases textuales |
| `firecrawl_search` | Encontrar candidatos y menciones |

`firecrawl_map` es el que más rinde: te dice qué **no** tiene cada uno, y las ausencias son
la mitad de los hallazgos de esta skill.

### La rejilla que sale sin una sola reseña

Antes de tocar el Frente 2, monta una tabla con una columna por competidor más la tuya, y
una fila por cada cosa: **publica precios · contenido publicado e indexado · testimonios
firmados o casos con nombre · sector diana explícito · nombra las herramientas que usa ·
dice qué NO hace**.

Esa última fila es la más interesante casi siempre, y casi siempre está vacía en todas las
columnas. **Esta rejilla vale por sí sola** y es lo que salva la sesión cuando la queja no
aparece.

---

## Frente 2 — La queja

Aquí es donde esta skill se caía. **Las reseñas son una fuente, no la fuente.**

| Dónde buscar | Cuándo rinde |
|---|---|
| **Google Maps** | Negocio con local o ficha: clínicas, tiendas, restaurantes |
| **Trustpilot, G2, Capterra, Doctoralia, Amazon, App Store** | Producto, software o servicio de consumo. **Trustpilot devuelve 403 casi siempre:** anótalo y sigue, no insistas tres veces |
| **Foros del sector y Reddit** | Casi siempre. Aquí no se borran las quejas |
| **LinkedIn** | **En B2B es la mina.** No los posts del competidor: **los comentarios debajo**, sobre todo los que no responde |
| **Twitter / X** | Quejas en caliente, con captura y con nombre |
| **Prensa del sector e hilos de asociaciones profesionales** | Sectores regulados, gremios, colegios profesionales |
| **Glassdoor / Indeed** | Opiniones de empleados. En una consultora dicen muchísimo de **cómo trabaja por dentro**: rotación, plantillas, prisas |
| **Páginas de "alternativas a X"** | Las escriben sus propios competidores. Están sesgadas y lo dicen todo |

**Por dónde empezar a leer** cuando sí hay reseñas (heurística, no ley):

> Las de 1 estrella suelen ser el enfado de un día. Las de 5, entusiasmo poco concreto.
> Las de **2 y 3 estrellas** son de clientes que querían que funcionara y explican con
> detalle por qué no del todo. **Y no te saltes las de 4 que llevan un "pero"**: suelen ser
> las más precisas de todas, porque el cliente está siendo justo.

Guarda **citas textuales** con fuente **localizable**: plataforma, quién firma, fecha y —si
existe— enlace directo. Sin eso, el test de la mentira no se puede hacer.

### Cuando no hay nada, eso *es* el hallazgo

**En B2B pequeño es el caso normal, no el raro.** En la prueba real, cuatro de seis
competidores tenían **cero** reseñas en todas las plataformas.

Cuenta cómo ha ido, con números, y sácale valor:

> "He buscado quejas de los {N} en {sitios}. Resultado: {X} tienen cero reseñas en cualquier
> plataforma, {Y} la tiene pero la página me bloquea. **No hay voz pública de cliente en tu
> mercado.**
>
> Eso no es que la búsqueda haya salido mal: es un dato sobre tu mercado y es aprovechable.
> Significa que **nadie tiene prueba social ahí fuera** — ni ellos ni tú. El primero que
> publique un caso con nombre y una cifra se queda solo en esa casilla. En un mercado con
> quinientas reseñas por competidor, esa jugada no existe."

Lo que **no** se hace: rellenar con quejas genéricas del sector disfrazadas de reseñas.
Escribir ángulos bonitos apoyados en reseñas plausibles que no has leído es exactamente lo
que este método existe para evitar.

**Solo entonces, y como último recurso**, pídele lo suyo — todo de una vez:

> "Última vía, y es la buena: **tú tienes material que yo no puedo ver.** Notas de llamadas
> de prospectos que venían quemados de otro proveedor, correos, mensajes de grupos del
> sector. Págamelo **tal cual, con las faltas y los tacos**, con fuente y fecha. Y no
> filtres: si alguien dice algo bueno de un competidor, lo quiero igual."

Si te lo pega, avisa de lo que cambia: son quejas **del mercado**, no atribuibles a un
competidor concreto. El cruce sigue valiendo, pero es un grado más flojo y hay que decirlo.

---

## El cruce

Las dos columnas juntas, buscando **contradicciones**:

| Lo que promete | Lo que dicen sus clientes | ¿Hay hueco? |
|---|---|---|
| "Atención personalizada" | "Llevo tres semanas esperando respuesta" | **Sí, y grande** |
| "Instalación en 5 minutos" | "Tardé una tarde entera y llamé a soporte" | **Sí** |
| "El más barato" | "Barato pero acabé pagando el doble en extras" | **Sí, de confianza** |

**No todo hueco sirve.** Descarta los que aparecen en una sola reseña —eso es un incidente,
no un patrón— y los que **tú tampoco puedes cumplir**.

### 🪞 La regla del espejo — la más importante del método

> ### No ataques la opacidad de precios si tú tampoco los publicas.
>
> Y su forma general: **no ataques ningún fallo que tú también tienes.**

Es tentadísimo salir con "nosotros sí decimos lo que cuesta" cuando cinco de seis lo
esconden. **No lo hagas si tu web no publica ni una horquilla.** Atacar por transparencia
desde una web opaca es regalarle al comprador la comparación que menos te conviene: la
primera persona que abra tu web verá que haces lo mismo, y a partir de ahí no se cree nada
de lo que digas.

Vale igual para el resto: no prometas "siempre el mismo interlocutor" si no tienes
estructura de cuentas; no ataques la letra pequeña de un mecanismo que no dominas.

**Y no cierra el ángulo para siempre.** Se reabre el día que publiquen precios. Dilo así:
*"hoy está cerrado; si publicáis rangos, volvemos a mirarlo"*.

### La queja que comparten todos

Si todos fallan en lo mismo, no lo descartes, pero tampoco lo trates como un ángulo más. Es
un **problema de sector** con dos lecturas: o es una expectativa que el mercado ya da por
perdida (y nadie te va a premiar por resolverla), o es la oportunidad más grande del
informe.

Para distinguirlas, mira dos cosas: si **alguien fuera del sector ya lo resuelve** —si es
práctica corriente en otro gremio, no es una idea rara— y si los clientes lo dicen con
**resignación** ("es lo que hay") o con **enfado**. El enfado con un daño concreto detrás es
una petición, no una queja. Di cuál de las dos lecturas es la tuya, **dicha como lectura, no
como dato**.

---

## Lo que entregas

```markdown
# El hueco · {{negocio}}
_{{fecha}} · generado con /el-hueco_

## Resumen ejecutivo
{{Media página. Es lo único que va a leer un comité. Cinco bloques cortos:}}
- **Qué se ha mirado:** {{N}} competidores verificados, {{N}} descartados y por qué;
  {{N}} fuentes de queja consultadas; y qué NO se ha podido ver.
- **El mapa en una frase:** {{qué prometen todos y en qué se parecen}}
- **Dónde está tu sitio:** {{la conclusión, en una frase que se pueda repetir en voz alta}}
- **Los ángulos:** {{una línea cada uno, marcando cuál es hallazgo y cuál hipótesis}}
- **La decisión que hay que tomar, y quién la toma.**

## Los ángulos que sostiene la evidencia

### Ángulo 1 — {{titular en lenguaje de cliente}}
- **El hueco:** {{qué promete la competencia vs. qué recibe el cliente}}
- **La prueba:** "{{cita textual EXACTA}}" — {{plataforma}}, {{quién firma}}, {{fecha}}
- **Lo sostienen:** {{N}} fuentes distintas {{lista de quién y cuándo}}
- **Tu frase:** {{cómo lo dirías tú en tu web, en una línea}}
- **Lo que tienes que poder cumplir:** {{qué debe ser cierto en tu negocio para decirlo,
  y qué te falta demostrar antes de publicarlo}}

### Ángulo 2 — ... (solo si la evidencia lo sostiene)

## Lo que NO deberías atacar
{{huecos descartados y por qué — incluida la regla del espejo cuando aplique}}

## Problema de sector detectado
{{si lo hay, y las dos lecturas posibles}}

## Tabla de evidencias
| Competidor | Promesa (textual) | Queja (textual) | Fuente | Fecha |

**Cómo leer esta tabla:** {{qué columna está verificada y cuál no}}

## Qué hacer con esto
| Puedes hacerlo tú esta semana | Necesita el OK de otra persona |
|---|---|
| {{acciones}} | {{decisión + quién la toma + cómo pedírselo}} |
```

Esa última tabla no es relleno: en la prueba real, dos de los hallazgos —publicar precios y
un pendiente de homologación— **no los podía decidir quien estaba delante**. Sepáralo tú, o
el informe acaba en una lista de deberes imposibles.

### Tres reglas que no se negocian

**1. Entrega los ángulos que la evidencia sostenga, no un número fijo.** Si solo hay uno
sólido, entrega uno y dilo:

> "Solo he encontrado un ángulo con evidencia suficiente. Los otros dos se sostenían en una
> sola reseña cada uno, así que te los dejo abajo como hipótesis por confirmar, no como
> hallazgos."

Rellenar el cupo inventando es exactamente lo que este método existe para evitar.

**2. El campo "lo que tienes que poder cumplir" es obligatorio.** Es lo que separa un
posicionamiento de una mentira con buen copy. Si no lo puedes rellenar, el ángulo no sale.

**3. Separa lo verificado de lo que no lo está, con esas palabras.** La columna de promesas
la has leído tú y cualquiera puede comprobarla. La de quejas, si viene del usuario, no.
*"La mitad izquierda de este informe la firmo yo. La mitad derecha la firmas tú."*

---

## 🔍 Test de la mentira

Cuatro comprobaciones, en voz alta y delante del usuario:

1. **Abre una cita y compruébala.** La que más daño haría si fuera falsa. Ve a la fuente,
   léela entera. Si no aparece, **sospecha de todo el análisis**: una cita inventada rara
   vez viene sola.
2. **Di qué NO puedes verificar.** Sin adornos. Si diez citas vienen del usuario, no las has
   leído en su sitio y no vale fingir que sí. Y dale la tarea concreta: *"vuelve a esos
   sitios y añade el enlace directo a cada una. Diez enlaces, un cuarto de hora. Con eso
   esto pasa de hipótesis bien construida a comprobable por un tercero."*
3. **Cuenta cuántas fuentes distintas sostienen cada ángulo.** Con una no es un patrón: es
   una hipótesis. Y ojo con la trampa: dos mensajes del mismo hilo, uno respondiendo al
   otro, **no son dos fuentes**. Son una conversación.
4. **Pregúntate, ángulo a ángulo, si podrías haberlo escrito sin mirar a nadie.** Si sale
   "ellos dan mal servicio y tú lo das bueno", no has encontrado nada. La prueba de que sí
   suele ser una frase concreta que no te habrías inventado nunca.

**Lo que este test NO comprueba** —dilo, porque importa—: que las reseñas representen a
todos los clientes (quien escribe reseñas es una minoría autoseleccionada: la enfadada), que
el problema siga existiendo hoy, ni que haya mercado suficiente para tu ángulo. Que cinco
personas se quejen de algo no significa que alguien vaya a pagar más por resolverlo.

Esto es una **hipótesis de diferenciación bien fundada**, no una certeza. La certeza la da
vender.

> Si solo hay tiempo para una, que sea la primera.

---

## El cierre

**El HTML se genera al final**, después de confirmar las conclusiones en el chat, siguiendo
`references/_entregable.md`. El **diario de investigación va entero**: cuántas búsquedas,
cuántas webs abiertas, cuántos competidores descartados y **en cuántas plataformas no había
nada**. Aquí ese bloque no es decoración — cuando el Frente 2 sale seco, es la prueba de que
el trabajo se hizo.

**Y escribe en `## Correcciones` del perfil**, con fecha: los competidores descartados y por
qué, los que has añadido, y cualquier cosa que contradiga lo que ponía el perfil.

---

## Modo prácticas

Si el usuario no tiene negocio, o quiere ver el ejercicio antes de hacerlo en serio, tienes
`ejemplos/resenas-competencia.md` dentro de esta skill. **Ábrelo tú** — no le pidas que te
lo pegue. Ofrécelo también como plan B cuando el Frente 2 salga seco y no tenga material
propio.

**Dilo claro:** son datos inventados, no sirven para decidir nada, y el paso 1 del test de
la mentira no se puede ejecutar porque no hay reseña real que abrir. *"Con tu negocio real,
ese paso no te lo puedes saltar."*

---

## Esto no es `/abogado-del-diablo`

Es la pregunta que más sale en clase. La diferencia, en una línea:

> **`/el-hueco` mira hacia fuera y decide qué decir.** `/abogado-del-diablo` se sienta en la
> silla del comprador y decide **qué defender**.

Uno busca el sitio vacío del mercado; el otro ataca el sitio que ya ocupas. Se encadenan
bien en ese orden: primero encuentras el ángulo, luego lo pones a prueba antes de que lo
haga un cliente.

---

## Lo que NO se hace

- **No montes un scraper de Google Maps.** Va contra sus condiciones de uso. Leer una ficha
  pública como lo haría una persona está bien; automatizar la extracción masiva, no.
- **No prometas reseñas por API** (Places devuelve 5 por negocio; Business Profile, solo las
  de *tu propio* negocio) **ni recomiendes herramientas de pago** como Outscraper o Apify.
  Si el usuario ya paga una, adelante; si no, con lo que tienes hay de sobra.
- **Si una fuente te bloquea, es un dato, no un obstáculo que sortear.** Anótalo y sigue.

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| Un "competidor" resulta ser otra cosa | Descártalo, dilo en voz alta y apúntalo en `## Correcciones`. Es de los momentos más valiosos de la sesión |
| Todas las reseñas son de 5 y suenan iguales | Puede indicar reseñas incentivadas, pero no lo afirmes: no se demuestra desde fuera. Ve a foros |
| Hay miles de reseñas | Filtra por los últimos 6 meses y empieza por las intermedias. Cuando dos o tres seguidas repitan lo mismo, ya tienes el patrón |
| El usuario dice "no lo sé" a una pregunta de negocio | **Es el mejor resultado posible.** Mata el ángulo ahí y díselo así: mejor ahora que después de escribir la landing |

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
