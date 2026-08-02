---
name: el-hueco
description: Analiza a tus competidores cruzando lo que prometen con las quejas reales de sus clientes, y saca ángulos de posicionamiento con cita textual. Para análisis de competencia y diferenciación.
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

> **Cómo se activa esta skill.** En **Claude.ai** no hay comandos con barra: pídelo con
> palabras normales y la skill se activa sola. Si ves que no la coge, nómbrala:
> *"usa la skill el-hueco"*. En **Claude Code** sí funciona `/el-hueco`.


---

## Antes de empezar

1. **Busca el perfil de marca.** En Claude Code, el fichero `perfil-marca.md`. En Claude.ai,
   las instrucciones del proyecto.
2. **Si no hay perfil**, no improvises: pide que ejecute `/mi-marca` primero y para aquí.
3. **Comprueba que puedes buscar en internet.** Esta skill necesita búsqueda web para
   trabajar con competidores reales. Si no la tienes activada, dilo antes de empezar:
   > "Para esto necesito poder buscar en internet. Si no lo tengo activado, puedo trabajar
   > con el dataset de prácticas del kit, o puedes pegarme tú las reseñas que encuentres."
4. **Confirma los competidores** antes de gastar tiempo:
   > "Voy a analizar a {{A}}, {{B}} y {{C}}. ¿Vamos con estos tres o cambias alguno?"

> **Quién hace el trabajo:** las búsquedas las hago yo, no el usuario. Solo le pido que
> pegue material si no tengo acceso a alguna fuente (redes cerradas, sitios que bloquean).

---

## El método

Dos frentes que se cruzan al final. Ese cruce es todo el valor.

### Frente 1 — La promesa

Para cada competidor, entra en su web y saca:

- **La frase grande** de la home, literal.
- **Los tres argumentos** que más repite.
- **A quién dice dirigirse.**
- **Qué precio muestra**, o si lo esconde.

Guarda las frases **textuales, entrecomilladas**. Parafrasear aquí destruye el ejercicio.

### Frente 2 — La queja

Busca lo que dicen sus clientes donde el competidor no manda: reseñas de Google,
Trustpilot, Doctoralia, Amazon, G2 o Capterra según el sector; comentarios en sus redes
—sobre todo los que **no** responde—; y foros o comunidades del sector.

**Por dónde empezar a leer** (heurística práctica, no ley universal):

> Las de 1 estrella suelen ser el enfado de un día. Las de 5, entusiasmo poco concreto.
> Las de **2 y 3 estrellas** son de clientes que querían que funcionara y explican con
> detalle por qué no del todo. **Y no te saltes las de 4 que llevan un "pero"**: suelen ser
> las más precisas de todas, porque el cliente está siendo justo.

Esto es un atajo para priorizar cuando hay cientos de reseñas, no una regla científica. Si
tienes pocas, léelas todas.

Guarda **citas textuales** con fuente **localizable**: plataforma, nombre que firma, fecha
y —si existe— enlace directo. Sin eso, el paso de verificación no se puede hacer.

> **Cómo hacer esto rápido:**
> - **En Claude Code:** puedes lanzar un agente por competidor y trabajar en paralelo.
> - **En Claude.ai:** hazlo por tandas, competidor a competidor. Tarda más, mismo resultado.

### El cruce

Pon las dos columnas una al lado de la otra y busca **contradicciones**:

| Lo que promete | Lo que dicen sus clientes | ¿Hay hueco? |
|---|---|---|
| "Atención personalizada" | "Llevo tres semanas esperando respuesta" | **Sí, y grande** |
| "Instalación en 5 minutos" | "Tardé una tarde entera y llamé a soporte" | **Sí** |
| "El más barato" | "Barato pero acabé pagando el doble en extras" | **Sí, de confianza** |

**No todo hueco sirve.** Descarta los que:
- Solo aparecen en una reseña suelta. Eso es un incidente, no un patrón.
- **Tú tampoco puedes cumplir.** Si prometes lo mismo y fallas igual, no tienes una ventaja:
  tienes un problema con fecha.

**Caso aparte: la queja que comparten todos.** Si los tres competidores fallan en lo mismo,
no lo descartes — pero tampoco lo trates como un ángulo más. Es un **problema de sector**, y
tiene dos lecturas: o es una expectativa que el mercado ya da por perdida (y nadie te va a
premiar por resolverla), o es la oportunidad más grande que vas a encontrar. Distinguirlo
exige mirar si alguien fuera del sector ya lo resuelve y si los clientes lo mencionan como
resignación ("es lo que hay") o como enfado. Señálalo aparte y dilo con esas palabras.

---

## Lo que entregas

```markdown
# El hueco · {{negocio}}
_{{fecha}} · generado con /el-hueco_

## Resumen en tres líneas
{{qué prometen todos, qué falla de verdad, dónde está tu sitio}}

## Los ángulos que sostiene la evidencia

### Ángulo 1 — {{titular en lenguaje de cliente}}
- **El hueco:** {{qué promete la competencia vs. qué recibe el cliente}}
- **La prueba:** "{{cita textual EXACTA}}" — {{plataforma}}, {{quién firma}}, {{fecha}}
- **Lo sostienen:** {{N}} reseñas distintas {{lista de quién y cuándo}}
- **Tu frase:** {{cómo lo dirías tú en tu web, en una línea}}
- **Lo que tienes que poder cumplir:** {{qué debe ser cierto en tu negocio para decirlo}}

### Ángulo 2 — ... (solo si la evidencia lo sostiene)

## Lo que NO deberías atacar
{{huecos descartados y por qué}}

## Problema de sector detectado
{{si lo hay, y las dos lecturas posibles}}

## Tabla de evidencias
| Competidor | Promesa (textual) | Queja (textual) | Fuente | Fecha |
```

### Dos reglas que no se negocian

**1. Entrega los ángulos que la evidencia sostenga, no un número fijo.** Hasta tres. Si solo
hay uno sólido, entrega uno y dilo:

> "Solo he encontrado un ángulo con evidencia suficiente. Los otros dos candidatos se
> sostenían en una sola reseña cada uno, así que te los dejo abajo como hipótesis por
> confirmar, no como hallazgos."

Rellenar el cupo inventando es exactamente lo que este método existe para evitar.

**2. El campo "lo que tienes que poder cumplir" es obligatorio.** Es lo que separa un
posicionamiento de una mentira con buen copy.

---

## 🔍 Test de la mentira

Tres comprobaciones, en voz alta y delante del usuario:

1. **Abre una cita y compruébala.** Ve a la plataforma, busca esa reseña, léela entera. Si
   no aparece, **sospecha de todo el análisis**: una cita inventada rara vez viene sola.
2. **Cuenta cuántas reseñas distintas sostienen cada ángulo.** Con una sola no es un patrón:
   es una hipótesis. Que quede escrito como tal.
3. **Pregúntate si podrías haber escrito ese ángulo sin mirar a nadie.** Si el resultado es
   "ellos dan mal servicio y tú lo das bueno", no has encontrado nada: vuelve a las reseñas.

**Lo que este test NO comprueba** —dilo, porque importa—: que las reseñas representen a
todos los clientes (quien escribe reseñas es una minoría autoseleccionada), que el problema
siga existiendo hoy, ni que exista mercado suficiente para tu ángulo. Esto te da una
**hipótesis de diferenciación bien fundada**, no una certeza. La certeza la da vender.

> Si solo hay tiempo para una, que sea la primera.

---

## De dónde salen las reseñas de verdad

**Esta skill está pensada para trabajar con datos reales.** El dataset de prácticas es el
plan B, no el plan A. Tres vías, en este orden:

### Vía 1 — Las leo yo (por defecto)

Con búsqueda web activada puedo entrar en las fichas públicas y leer lo que hay. Funciona
bien con: **Google Maps** (ficha del negocio), **Trustpilot**, **Doctoralia**, **Yelp**,
**Amazon** (producto), **Capterra**, **App Store / Google Play**, foros y **Reddit**.

Empieza siempre por aquí. Dile al usuario qué estás mirando y cuántas reseñas has podido
leer de cada sitio: si de un competidor solo has visto seis, eso cambia lo sólido que es el
hallazgo y hay que decirlo.

### Vía 2 — Las pega el usuario (la que nunca falla)

Cuando una fuente esté bloqueada, pida registro o cargue con JavaScript, no te inventes lo
que habría. Pide el copia-pega, que es cuestión de dos minutos:

> "De Trustpilot no consigo sacar el contenido. ¿Puedes abrir su página, ordenar por «más
> recientes», y pegarme las 15-20 primeras? Con eso lo tengo."

**Esta vía es la más fiable de las tres** y conviene decirlo sin complejos: el alumno tarda
dos minutos y a cambio tiene la certeza de que cada cita es real.

### Vía 3 — API o herramienta de pago (solo si ya la tiene)

Existen servicios (Outscraper, Apify y similares) que devuelven todas las reseñas de un
negocio de forma masiva. Son de pago y **no hacen falta para esto**. Si el usuario ya paga
uno, adelante; si no, no se lo recomiendes: con la vía 1 y la vía 2 hay de sobra para tres
competidores.

### Lo que NO se hace

- **La API oficial de Google Places devuelve solo 5 reseñas** por negocio, y la de Google
  Business Profile solo da las de *tu propio* negocio (además de tardar semanas en
  aprobarse). Para competidores, ninguna de las dos sirve. No prometas lo contrario.
- **No montes un scraper de Google Maps.** Va contra sus condiciones de uso. Leer una ficha
  pública como lo haría una persona está bien; automatizar la extracción masiva, no.
- Si una fuente te bloquea, **es un dato, no un obstáculo que sortear**: dilo y tira de la
  vía 2.

---

## Modo prácticas (plan B)

Si el usuario no tiene negocio, o quiere ver el ejercicio antes de hacerlo en serio, usa
`ejemplos/resenas-competencia.md` (viene dentro de esta skill): reseñas sintéticas de los
competidores de las tres marcas de prácticas, con el patrón escondido dentro.

**Cuando lo uses, dilo claro:** son datos inventados. En este modo el paso 1 del test de la
mentira no se puede ejecutar —no hay reseña real que abrir— y hay que advertirlo:
*"con tu negocio real, este paso no te lo puedes saltar."*

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| No encuentras reseñas del competidor | Puede que no tenga, o que no sean accesibles desde aquí. No concluyas "nadie habla de él": busca en foros del sector y en comentarios de sus redes, y si no aparece nada, dilo como limitación |
| Todas las reseñas son de 5 y suenan iguales | Puede indicar reseñas incentivadas, pero no lo afirmes: no se puede demostrar desde fuera. Ve a foros, donde no se pueden borrar |
| Hay miles de reseñas | Filtra por los últimos 6 meses y empieza por las intermedias. Cuando dos o tres seguidas te repitan lo mismo, ya tienes el patrón |
| No tienes acceso a búsqueda web | Pide al usuario que pegue las reseñas, o trabaja con el dataset de prácticas |

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
