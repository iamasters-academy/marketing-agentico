# Protocolo de captura · cómo se hace la medición sin engañarse

El diagnóstico entero se hace **gratis y a mano**: el usuario abre los tres motores, hace las
preguntas y pega las respuestas. No hay atajo automático que dé el mismo resultado, y más
abajo está explicado por qué.

Tiempo real: **45–60 minutos** para 20 preguntas × 3 motores. La versión de 8 preguntas baja a
unos 20. Dilo antes de empezar, para que nadie lo abandone a mitad.

---

## Paso 0 — La sesión limpia (esto invalida todo lo demás si se salta)

Los tres motores personalizan. Si el usuario lleva meses hablándoles de su negocio, le van a
nombrar su propia marca — no porque sea visible, sino porque **se lo ha contado él**.

Antes de empezar:

- **Abre un chat nuevo para cada pregunta.** No encadenes las 20 en la misma conversación: la
  respuesta 7 se contamina con las seis anteriores.
- **Usa el modo temporal o de incógnito** si el motor lo tiene, y **desactiva la memoria o la
  personalización** en los ajustes mientras dure la medición.
- **Mejor aún: sesión cerrada o navegador en incógnito**, sin haber iniciado sesión.
- Si el motor tiene selector de modelo, **anota cuál estás usando**. La respuesta cambia.

> Esta es la diferencia entre una medición y un espejo. Dilo con esas palabras.

---

## Paso 1 — La tanda

Para cada una de las 20 preguntas, en cada motor:

1. Chat nuevo.
2. Pega la pregunta **tal cual**, sin añadir contexto, sin "para mi empresa que se llama…".
3. Espera a la respuesta completa, incluidas las fuentes si las muestra.
4. **Copia la respuesta entera y pégamela**, con esta cabecera de una línea:

```
[MOTOR: ChatGPT | PREGUNTA 3 | 2026-08-04 11:20 | búsqueda web: sí]
<respuesta pegada tal cual>
```

Si el usuario prefiere ir por bloques, que pegue de 5 en 5. Yo voy tabulando y confirmo lo que
llevo: *"Voy por 15 de 60. Llevas 2 apariciones, las dos en Perplexity."*

**No resumas la respuesta al pegarla.** Los adjetivos y el orden de la lista son la mitad del
análisis; si el usuario "acorta" pierde justo lo que se mide.

---

## Paso 2 — La repetición (el control de calidad)

**Repite 4 de las 20 preguntas una segunda vez**, en un chat nuevo, en el mismo motor.

Por qué: estos sistemas no son deterministas. La misma pregunta puede devolver otra lista. El
estudio del Tow Center de Columbia sobre ChatGPT ya observó en 2024 que al repetir la misma
consulta *"typically returned a different answer each time"* (ver `datos-geo-2026.md`, punto 7).

Qué hacer con el resultado:

- **Si las dos veces sale lo mismo** → tu medición es estable, dilo en el informe.
- **Si cambia mucho** → tu share of model es una **foto con margen de error**, no un ranking.
  Escríbelo así en el informe. No lo escondas: es el dato más honesto que vas a dar.

---

## Paso 3 — Las fuentes

Cuando el motor muestre enlaces, **cópialos también**. Esa lista de dominios es la materia
prima del plan de la segunda mitad de la skill: no vas a recomendar "haz Reddit" porque lo diga
un estudio, sino porque **en las respuestas de su sector sale Reddit**. O sale YouTube. O salen
tres comparativas de un blog especializado que nadie del sector conoce.

Si un motor no muestra fuentes en una respuesta, anótalo como "sin fuentes". También es un dato,
pero **anótalo sin interpretarlo**: que no te enseñe enlaces no demuestra que no haya buscado en
la web. Puede haber buscado y no mostrarlos. Lo único que puedes afirmar es que **esa respuesta
no aporta fuentes verificables**, y por tanto no suma al mapa.

---

## Vía 1 — Lo que puedo hacer yo con búsqueda web

Puedo, y conviene hacerlo **en paralelo** a que el usuario pegue:

- Buscar quién publica las **comparativas y listados** del sector ("mejores {{categoría}} 2026")
  y comprobar si la marca del usuario aparece en ellas.
- Mirar los **directorios y marketplaces** de su sector (según el caso: G2, Capterra, Trustpilot,
  Doctoralia, Google Maps, Amazon, App Store…) y ver si tiene ficha y cómo está.
- Buscar **hilos de Reddit y foros** donde ya se pregunta por su categoría, para saber dónde
  existe la conversación antes de meterse en ella.
- Revisar si en **YouTube** hay vídeos que mencionen su categoría y sus competidores.

**Lo que NO puedo hacer:** consultar ChatGPT, Perplexity o Gemini por él. No tengo acceso a
esas herramientas desde aquí. La medición la hace el usuario, sí o sí. Dilo desde el principio
en vez de dejar que lo descubra a los diez minutos.

---

## Vía 2 — Lo pega el usuario (esta es la principal, sin complejos)

Es la vía por defecto de esta skill y la única que produce el número real. Es copiar y pegar:
aburrido, gratis y fiable. No hay nada más honesto que eso.

---

## Vía 3 — Herramientas y API: solo si ya las tiene o son gratis

**Gratis y oficial: el informe de IA generativa de Google Search Console.** Anunciado el 3 de
junio de 2026, muestra las **impresiones** de tu sitio en AI Overviews y AI Mode. Es gratis, es
de Google y no requiere programar. Pero:

- **Puede que ni siquiera lo tengas.** Google lo está desplegando por fases, "a un subconjunto
  de propietarios de sitios", y avisa de que "no todas las propiedades tienen acceso". Antes de
  mandar a nadie a buscarlo, dile esto: si no le aparece, no es que lo haya hecho mal.
- Da **impresiones y poco más**: sin clics, sin CTR, sin las consultas que las provocaron.
- Cubre **solo superficies de Google**. De ChatGPT y Perplexity no sabe nada.
- Necesitas ser propietario verificado del dominio.

Sirve como termómetro complementario, **no** sustituye a la medición manual.

**Herramientas GEO de pago** (Semrush AI Toolkit, Ahrefs Brand Radar, Profound, Peec AI y
similares) automatizan esto a escala. Si el usuario ya paga una, que la use. **Si no, no se la
recomiendes**: para 20 preguntas y tres motores no hace falta gastar nada, y ese es
precisamente el mensaje.

**Las API no valen para esto, y hay que decirlo.** Consultar la API de un modelo no reproduce
lo que ve un usuario en la app: la app añade su propia capa de búsqueda, de personalización y
de producto, y puede estar usando otro modelo. Una medición hecha por API mide la API, no la
experiencia real de tu cliente. Es un error frecuente y caro.

---

## Lo que NO se hace

- **No se automatiza la consulta a ChatGPT, Perplexity o Gemini con bots o scrapers.** Va contra
  sus condiciones de uso. Y no hace falta: son 60 copiapegas.
- **No se mete el nombre de la marca en las 18 preguntas de medición.** Eso no es medir, es
  hacerse trampas al solitario.
- **No se prometen plazos.** "En 30 días sales en ChatGPT" no lo puede sostener nadie: las citas
  de Reddit en ChatGPT cayeron de cerca del 60% a alrededor del 10% entre principios de agosto y
  mediados de septiembre de 2025 (ver `datos-geo-2026.md`, punto 3).
- **Si un motor no está disponible en su país, o le pide pagar, o no muestra fuentes** → se dice
  y se mide con los que haya. Dos motores medidos de verdad valen más que tres inventados.
