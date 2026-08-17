# Lo que se puede medir sin pedirle nada al usuario

> **Este es el cambio más importante de la skill.** Antes, todo el diagnóstico dependía de que
> el usuario copiara y pegara 24 respuestas de tres buscadores. Eso sigue existiendo, pero
> **ahora es una cuarta parte del informe, no el informe entero.**
>
> Las tres capas de este fichero se miden **solas, en tres minutos, sin preguntar nada**.
> Ejecútalas SIEMPRE y ANTES de mandar al usuario a copiar y pegar.

---

## Por qué esto va primero

Cuando alguien no aparece en ChatGPT, hay tres razones posibles y **solo una de ellas la
descubres preguntando al modelo**:

| La razón | Cómo se descubre | ¿Hace falta el usuario? |
|---|---|---|
| **No te pueden leer** | Su `robots.txt` bloquea los bots de IA | No |
| **No existes como entidad** | No estás en las fuentes de las que salen los hechos | No |
| **Tu texto no es citable** | Está escrito para persuadir, no para ser citado | No |
| **Te pueden leer, existes, eres citable… y aun así no te nombran** | Preguntándole al modelo | Sí |

Las tres primeras son **las que tienen arreglo esta semana**. La cuarta es un síntoma.
Empezar por el síntoma es lo que hacía que la skill costara cuarenta minutos y sirviera para
desmoralizar.

---

# Capa A — ¿Te pueden leer? (30 segundos)

Lee `https://{dominio}/robots.txt` del usuario **y de cada competidor**. Es una petición de
texto plano: no hace falta permiso, no hace falta nada.

> **El dato que justifica esta capa.** Un estudio de Originality.ai de 2025 sobre los 1.000
> sitios más visitados encontró que **más del 35% bloquea al menos un crawler de IA
> importante**, y entre el 5 y el 10% bloquea todos. Casi siempre por herencia: reglas de SEO
> antiguas que nadie ha vuelto a mirar. **Bloquear los bots de IA es la forma más rápida que
> existe de volverse invisible en las respuestas de los buscadores con IA.**

## Los bots que importan

**Nivel 1 — críticos. Si están bloqueados, ahí está tu problema.**

| Bot | De quién es | Qué pasa si lo bloqueas |
|---|---|---|
| `GPTBot` | OpenAI | Sales de la navegación web de ChatGPT |
| `OAI-SearchBot` | OpenAI | **Sales de la búsqueda de ChatGPT.** Ojo: es distinto de GPTBot |
| `ClaudeBot` | Anthropic | Sales de la búsqueda web de Claude |
| `PerplexityBot` | Perplexity | Sales de Perplexity, que es un buscador puro |

**Nivel 2 — importantes.**

| Bot | Matiz que casi nadie sabe |
|---|---|
| `Google-Extended` | Controla si Google usa tu contenido para Gemini y para los resúmenes de IA. **Bloquearlo NO afecta a tu posición en Google Search** — eso lo controla `Googlebot`. Mucha gente lo bloquea creyendo que se protege y lo único que hace es desaparecer de las respuestas de IA de Google |
| `Applebot-Extended` | Apple Intelligence y Siri |

**Nivel 3 — solo entrenamiento.** `CCBot`, `anthropic-ai`, `Bytespider`. Bloquearlos es una
decisión legítima: no afecta a que te encuentren hoy, solo a que te usen para entrenar. **Si
el usuario los bloquea a propósito, respétalo y dilo así.** No es un error.

## Los tres matices que hay que explicar siempre

1. **`GPTBot` y `OAI-SearchBot` no son lo mismo.** Puedes permitir uno y bloquear el otro. Si
   quieres aparecer en las respuestas de ChatGPT pero no que te usen para entrenar, esa es
   exactamente la combinación: permite `OAI-SearchBot`, bloquea `GPTBot`.
2. **Bloquear `Google-Extended` no te baja en Google.** Es el error más caro y más repetido.
3. **Un `robots.txt` que no menciona a ningún bot de IA no es un `robots.txt` correcto: es un
   `robots.txt` viejo.** Si dice `User-agent: * / Disallow:` estás permitiendo todo por
   defecto, que funciona — pero por accidente, no por decisión. Y lo que funciona por
   accidente se rompe el día que alguien toque el fichero.

## Cómo se puntúa

Empieza en 100 y resta:
- **−15** por cada bot de nivel 1 bloqueado
- **−5** por cada bot de nivel 2 bloqueado
- **−10** si el `robots.txt` no referencia ningún `sitemap`
- **Nivel 3 no resta** si el bloqueo parece deliberado (aparece junto a otros bots de
  entrenamiento y no junto a los de búsqueda)

## Lo que hay que enseñar en el informe

Una tabla con **una fila por bot y una columna por empresa** (el usuario y sus competidores).
Es la tabla más accionable de todo el informe: se lee en cinco segundos y se arregla en diez
minutos editando un fichero de texto.

---

# Capa B — ¿Existes como entidad? (1 minuto)

Los modelos no "recuerdan" tu web. Tienen un mapa de entidades —empresas, personas,
conceptos— construido a partir de unas pocas fuentes muy concretas. **Si no estás en esas
fuentes, para el modelo no existes**, por conocido que seas en tu sector.

Comprueba cada una, para el usuario y para sus competidores:

| Fuente | Peso | Cómo se comprueba |
|---|---|---|
| **Wikidata** | Alto | `wikidata.org/w/api.php?action=wbsearchentities&search={marca}&language=es&format=json` — cuenta las entidades devueltas. **Cero entidades = no existes en el grafo de conocimiento.** Es la comprobación más importante y la que nadie hace |
| **Wikipedia** | Alto | `es.wikipedia.org/w/api.php?action=query&list=search&srsearch={marca}&format=json`. Ojo: muchos hits sin entidad en Wikidata suelen ser **ruido** (páginas que mencionan palabras de tu nombre), no presencia real. Compruébalo antes de contarlo |
| **Fuentes del nicho** | Alto | Comparadores, medios del sector, rankings, colegios profesionales. Búsqueda web normal |
| **Reddit y foros** | Medio | Si se habla de la marca, cuándo fue la última vez y en qué tono |
| **YouTube** | Medio | Canal propio **y vídeos de terceros** hablando de la marca |
| **LinkedIn** | Bajo | Página de empresa con actividad real |

> **El dato que cambia las prioridades.** Un estudio de Ahrefs de diciembre de 2025 sobre
> **75.000 marcas** midió qué correlaciona con aparecer citado en respuestas de IA:
> **YouTube sale con 0,737 — la correlación más alta de todas.** Los backlinks y la autoridad
> de dominio, la métrica reina del SEO de los últimos veinte años, salen con **0,266**.
>
> Dilo tal cual en el informe. Cambia qué hace el usuario el lunes por la mañana.

**Y la conclusión que hay que escribir sin adornos:** una marca sin entidad en Wikidata, sin
conversación en Reddit y sin nada en YouTube va a puntuar casi cero aquí **por muy bien que
posicione en Google**. Son dos juegos distintos.

## Cómo se puntúa

Sobre 100: Wikidata + Wikipedia **30** · fuentes del nicho **25** · Reddit **20** ·
YouTube **15** · LinkedIn **10**.

---

# Capa C — ¿Tu texto es citable? (1 minuto)

Un modelo cita bloques que **se entienden solos**. Tu web está escrita para persuadir a
alguien que ya está leyéndola, con contexto de lo de arriba y pronombres por todas partes.
Eso no se puede citar: si lo arrancas de la página, no significa nada.

Lee su web y mídela. Son umbrales concretos, no impresiones:

| Qué se mide | El umbral | Por qué |
|---|---|---|
| **Bloque autocontenido** | **134-167 palabras** es el rango óptimo. 100-200 pasable. Fuera de 80-250, malo | Es el tamaño que un modelo puede coger entero y citar |
| **Densidad de pronombres** | **Por debajo del 2%** | «Esto», «lo anterior», «como decíamos» hacen que el bloque no se entienda solo |
| **Nombres propios** | **3 o más** por bloque | Sin nombres, el modelo no sabe de qué o de quién habla |
| **Longitud de frase** | **Media de 10-20 palabras** | Las frases de 40 palabras no se citan |
| **Densidad estadística** | Porcentajes, cifras con unidad, años, fuentes citadas | Los modelos prefieren texto con números verificables |
| **Patrón de definición** | «X es un…», «X consiste en…» en los primeros 60 words | Es lo que un modelo busca cuando alguien pregunta «qué es X» |
| **Señales de originalidad** | «según nuestros datos», casos reales, cifras propias | Diferencia tu texto de los otros mil iguales |

**Aplícalo sobre las tres páginas que más le importan**, no sobre la web entera. Y da el
ejemplo: coge un párrafo real suyo, mídelo, y **reescríbelo delante de él** para que vea la
diferencia. Ese es el momento en que se entiende de qué va todo esto.

## Cómo se puntúa

Sobre 100: bloque de respuesta **30** · autocontención **25** · legibilidad estructural
**20** · densidad estadística **15** · originalidad **10**.

---

# Capa D — ¿Te nombran? (la manual, y ahora la última)

Esta es la que sigue necesitando al usuario, porque **Claude no puede consultar ChatGPT,
Perplexity ni Gemini**. Está en el cuerpo del `SKILL.md` y en `protocolo-de-captura.md`.

**Lo que cambia:** ya no se hace primero ni se hace a ciegas. Cuando el usuario llega aquí ya
sabes si le pueden leer, si existe como entidad y si su texto es citable. Así que:

- **Si las capas A, B y C explican el cero, dilo y ofrece saltarse la D.** Si su `robots.txt`
  bloquea GPTBot, no hace falta que dedique treinta y cinco minutos a confirmar que ChatGPT no
  le nombra. Ya sabemos por qué. **Ofrecerle ese atajo es lo más honesto que puede hacer esta
  skill.**
- **Si las capas A, B y C están bien y aun así no aparece**, entonces la capa D es
  imprescindible y merece los treinta y cinco minutos: es el único sitio donde va a estar la
  respuesta.
- Reduce la tanda a **tres preguntas por buscador**, una pegada por buscador. El resto del
  informe ya no depende de eso.

---

## Atribución

Las tres capas de este fichero están adaptadas de **[geo-seo-claude](https://github.com/zubair-trabzada/geo-seo-claude)**,
de Zubair Trabzada, publicado bajo licencia MIT (Copyright © 2026 Zubair Trabzada). De ahí
salen la tabla de crawlers por niveles, los pesos de presencia de marca, los umbrales de
citabilidad y el esquema de puntuación. Adaptado al español, simplificado para un usuario no
técnico e integrado en el método de este kit.
