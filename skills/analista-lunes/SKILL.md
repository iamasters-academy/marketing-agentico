---
name: analista-lunes
description: Mira tus métricas y te dice las tres cosas que han cambiado, con una hipótesis de causa y qué comprobar para cada una. Informe repetible cada lunes, sin montar ningún dashboard.
---

# /analista-lunes — Tres cosas han cambiado. Y por qué.

Un dashboard te enseña cuarenta métricas a la vez y te deja a ti el trabajo de ver qué se
ha movido. Es bonito el primer día, y a los tres meses no lo abre nadie.

Esto hace otra cosa. Mira los mismos datos y te devuelve **tres cambios reales**, cada uno
con una hipótesis de por qué ha pasado y **qué comprobar mañana** para saber si esa
hipótesis se sostiene. No dibuja gráficos: hace de analista.

Y como tarda lo mismo cada semana, se puede repetir cada lunes. Ahí está el truco: a partir
del segundo lunes, el informe empieza revisando si las hipótesis del lunes anterior se
cumplieron. Eso es lo que separa un analista de un generador de informes.

**Disparadores:** "/analista-lunes", "analiza mis métricas", "qué ha cambiado esta semana",
"revisa mis datos", "informe semanal de analítica", "por qué han bajado las ventas/visitas",
"mira mi Google Analytics", "tengo un CSV de métricas", "análisis de embudo", "mi informe
del lunes".

---

## Antes de empezar

1. **Busca el perfil de marca.** En Claude Code, el fichero `perfil-marca.md`. En Claude.ai,
   las instrucciones del proyecto. Sirve para saber qué es una conversión en este negocio y
   qué canales le importan. Si no hay perfil, se puede trabajar igual: pregunta esas dos
   cosas a mano y sigue.
2. **Pregunta de dónde salen los datos** antes de nada. Tres opciones, y todas valen:
   > "¿Trabajamos con la cuenta demo de Google Analytics —una tienda real de Google, con los
   > datos ofuscados por ellos, pública y gratis—, con tu propio Analytics, o con un CSV
   > (un archivo de tabla, tipo hoja de cálculo) que ya tengas de Meta Ads, Shopify o tu CRM?"

   El detalle de cada vía está más abajo, en **De dónde salen los datos de verdad**.
3. **Nunca pidas contraseñas, claves de API ni accesos.** No hacen falta para nada de esto.
   Si el usuario te los ofrece, recházalos y explícalo.
4. **Comprueba que los periodos son comparables** antes de analizar nada. Este paso se salta
   mucho y se carga el informe entero: ver la tabla del paso 1 del método.

> **Quién hace el trabajo:** el análisis lo haces tú. Al usuario solo le pides los datos, y
> se los pides una vez, diciéndole exactamente qué necesitas.

5. **Di qué filtros vas a poder aplicar y cuáles no.** Con dos periodos sueltos se puede
   filtrar por volumen y ordenar por impacto, pero **no** se puede saber si un cambio cabe
   dentro de la variación normal (hace falta el histórico) ni si es un solo día (hace falta
   el desglose diario). Pídelos si se pueden conseguir; y si no llegan, escribe esos filtros
   como **"no comprobado por falta de datos"**. Nunca como "descartado". Decir que has
   descartado algo que no has mirado es exactamente la mentira que esta skill existe para
   evitar.

---

## El método

### Paso 1 — Fijar los dos periodos

Un cambio solo existe **contra algo**. Antes de mirar ninguna cifra, deja escrito qué
comparas con qué, y enséñaselo al usuario.

| Regla | Por qué |
|---|---|
| **Semanas completas contra semanas completas** (lunes a domingo) | "Últimos 7 días" arrastra el día de hoy a medias y hunde la última cifra sin que haya pasado nada |
| **Mismo número de fines de semana y de laborables** | Un festivo entre semana puede alterar mucho la comparación, sobre todo en B2B. Cuantifícalo con el histórico de ese negocio antes de buscar otra explicación |
| **Si el negocio es estacional, añade el mismo periodo del año pasado** | Una tienda en enero contra diciembre siempre cae. Eso no es una anomalía: es enero |
| **Deja el periodo escrito en el informe, con fechas** | Para que dentro de un mes se sepa qué se comparó |

### Paso 2 — El barrido, por capas

No mires cincuenta métricas: mira **cuatro capas**, en este orden, y en cada una el desglose
que tengas disponible (canal, campaña, página, dispositivo, país).

1. **Llegan** — sesiones o usuarios por canal.
2. **Se quedan** — sesiones con interacción, páginas por sesión, tiempo, rebote.
3. **Convierten** — eventos clave, leads, pedidos, y **la tasa** de cada uno.
4. **Pagan** — ingresos, ticket medio, si existen.

El orden importa: si la caída está en la capa 1, no pierdas tiempo buscando explicaciones en
la 3. Y al revés — si llega la misma cantidad de gente y convierte menos, el campo se
estrecha, pero **el dato todavía no señala una causa**: puede ser la mezcla de canales, la
calidad del tráfico, el dispositivo, la medición, la página, la oferta o el proceso de
compra. Reduce el terreno, no cierres el caso.

Las definiciones de cada métrica y los nombres que usa Google Analytics están en
`references/senal-o-ruido.md`. **No inventes métricas que no estén en los datos que te han
dado**: si no hay ingresos en la tabla, no hables de ingresos.

**Y define en una frase cualquier término técnico la primera vez que lo uses** —referral,
atribución, umbrales de datos, muestreo, sesión con interacción—. Quien lee esto puede ser
alguien de marketing que no ha abierto Analytics en su vida, y un informe que hay que ir
traduciendo no se lee.

### Paso 3 — El filtro de ruido (aquí está el trabajo de verdad)

La mayoría de lo que se mueve no significa nada. Antes de llamar a algo "cambio", pásalo por
estos cuatro filtros. El desarrollo completo, con la aritmética, está en
`references/senal-o-ruido.md`.

- **Volumen mínimo.** Por debajo de unas 30 sesiones o 10 conversiones en el periodo, el
  porcentaje dice muy poco: pasar de 2 a 4 pedidos es un +100 % y puede ser una persona. No
  son umbrales estadísticos, son reglas de andar por casa. **Y con una excepción que
  importa:** si esos pocos pedidos valen mucho dinero, el cambio se cuenta igual — con los
  números absolutos delante y la etiqueta "muestra pequeña", y sin atribuirle una causa.
- **¿Es grande comparado con lo normal?** Mira cuánto oscila esa métrica en las últimas 6-8
  semanas. Si sube y baja un 20 % todas las semanas, un -18 % es martes. *Requiere el
  histórico: si no lo tienes, este filtro queda "no comprobado".*
- **¿Es un día o es la semana?** Un pico o un valle de un solo día casi nunca es una
  tendencia. Míralo día a día antes de escribirlo. *Requiere el desglose diario: si no lo
  tienes, este filtro queda "no comprobado".*
- **¿Ha empeorado algo, o solo ha cambiado la mezcla?** Una media global puede caer sin que
  ningún segmento empeore, solo porque ha cambiado el peso de cada uno. Es el error de
  lectura más común en marketing y tiene su propia sección en el fichero de referencia.

### Paso 4 — Elegir tres, y por impacto

**Ordena por lo que mueve el negocio, no por el porcentaje más gordo.** Un -40 % en un canal
que trae 12 visitas importa menos que un -6 % en el que trae 8.000. Traduce siempre a
unidades: sesiones, leads, pedidos, euros.

Tres es una decisión de diseño, no una ley: es el número que mantiene el informe accionable
en una semana normal. Si hay más, van en una lista aparte, sin desarrollar.

### Paso 5 — La hipótesis, y antes la aburrida

Cada cambio sale con una causa probable. Pero **primero descarta las explicaciones
aburridas**, porque son las más frecuentes y las menos emocionantes:

1. **La medición se ha roto** — una etiqueta caída, un dominio nuevo sin medir, un banner de
   cookies distinto. Señal típica: cae todo a la vez, un día concreto.
2. **El calendario** — festivo, puente, vacaciones, fin de campaña.
3. **Un día suelto** — un pico raro, una newsletter, un post que corrió.
4. **Tráfico basura** — bots, un referral que aparece de la nada, un país donde no vendes.
5. **La herramienta ha cambiado** — atribución, umbrales de privacidad, definiciones nuevas.

Las pistas para distinguir cada una están en `references/senal-o-ruido.md`. Solo cuando esas
cinco no explican el cambio pasas a la hipótesis interesante: la creatividad, el precio, la
competencia, el producto.

**Toda hipótesis lleva dos campos obligatorios:**
- **Qué la tumbaría** — qué tendrías que ver para saber que es falsa.
- **Qué mirar a continuación** — una comprobación concreta y acotada. Apunta a que quepa en
  diez minutos; si por su naturaleza va a llevar más (revisar la medición entera, un
  rediseño, un cambio de atribución), dilo en vez de fingir que es rápida.

Una hipótesis sin esos dos campos no es una hipótesis: es una historia bien contada.

Y al escribir **"Ya he descartado"**, separa las dos cosas: lo que has mirado y no explica el
cambio (descartado) y lo que no has podido mirar porque no están los datos (**no
comprobado**). Nunca las mezcles.

### Paso 6 — El bucle del lunes

Al final del informe, guarda las hipótesis en una lista con fecha. **El lunes siguiente,
empieza por ahí:** ¿se confirmó, se descartó, o sigue abierta?

Es la parte que más valor da y la primera que todo el mundo se salta. Un informe suelto es
una foto; la serie de informes es lo que te enseña cómo se comporta tu negocio de verdad. La
plantilla de ese registro está en `references/plantilla-informe.md`.

> **Esto no es automático, y hay que decírselo al usuario con todas las letras:** no recuerdas
> conversaciones anteriores. Si el lunes que viene abre un chat nuevo, empiezas de cero.
> Así que al terminar el informe, dilo:
>
> > "Guarda este registro de hipótesis. En Claude.ai, lo más cómodo es tener un Proyecto para
> > esto y dejarlo en sus archivos; si no, guárdalo tú y pégalo al principio del chat el lunes
> > que viene. En Claude Code queda en `analista-lunes-registro.md` y lo leo yo solo. Si no
> > vuelve a llegarme, el lunes que viene no podré cerrar ninguna hipótesis."

---

## Lo que entregas

Sigue la plantilla completa de `references/plantilla-informe.md`. En resumen:

```markdown
# El analista de los lunes · {{negocio}}
_{{periodo}} vs. {{periodo de comparación}} · fuente: {{de dónde salen los datos}} · {{fecha}}_

## Lo que pasó con las hipótesis del lunes pasado
{{solo a partir del segundo informe: confirmada / descartada / sigue abierta}}

## Las tres cosas que han cambiado

### 1. {{titular de una línea, con el número dentro}}
- **El cambio:** de {{X}} a {{Y}} ({{±Z %}}) · {{métrica}} · {{segmento}} · {{periodo}}
- **Cuánto pesa:** {{en pedidos, leads o euros}}
- **Hipótesis:** {{por qué creo que ha pasado}}
- **Qué la tumbaría:** {{qué tendría que ver para descartarla}}
- **Ya he descartado:** {{medición rota / festivo / un solo día / bots / cambio de la herramienta}}
- **No he podido comprobar:** {{lo que no se ha mirado porque no están los datos}}
- **Qué mirar mañana:** {{comprobación concreta y acotada}}
- **Confianza:** alta / media / baja — {{por qué}}

### 2. … ### 3. …

## Lo que se ha movido y NO es noticia
{{cambios descartados y el filtro que no pasaron}}

## Lo que estos datos no pueden decirme
{{qué no está medido, qué falta, qué no se puede saber desde aquí}}
```

### Dos reglas que no se negocian

**1. Nunca un porcentaje solo.** Siempre "de 412 a 383 sesiones (-7 %)", nunca "-7 %". El
porcentaje sin el número absoluto es la forma más rápida de que alguien tome una decisión de
mil euros por culpa de cuatro clics de diferencia.

**2. Entrega los cambios que los datos sostengan, hasta tres. Si la semana ha sido plana,
dilo.** Con estas palabras:

> "Esta semana no ha cambiado nada que merezca tu atención. Lo que más se ha movido es {{X}},
> y no pasa el filtro porque {{motivo}}. Te veo el lunes que viene."

Un analista que algunas semanas no tiene nada que contarte te está ahorrando el lunes.
Rellenar el cupo con tres cambios inventados es exactamente lo que este método existe para
evitar.

---

## 🔍 Test de la mentira

Tres comprobaciones, delante del usuario:

1. **Contrasta un número con la fuente, y rehaz la cuenta.** Coge la primera cifra del informe
   y búscala en la pantalla de Analytics o en la celda del CSV: eso comprueba que está bien
   copiada. Después rehaz el porcentaje a mano —`(valor nuevo − valor anterior) ÷ valor
   anterior × 100`— para comprobar que además está bien calculado. Si algo no cuadra, para:
   un número mal leído contamina todas las hipótesis que cuelgan de él.
2. **Pregunta qué ha descartado.** Literal: *"¿qué cambios grandes has visto y no has metido
   en los tres, y por qué?"* Si no sabe contestar, no ha filtrado nada: ha cogido tres al
   azar. La respuesta tiene que nombrar el filtro (volumen, variación normal, un solo día,
   mezcla).
3. **Busca la explicación aburrida.** Para cada hipótesis: *"¿esto podría explicarse por una
   etiqueta rota, un festivo o un único día raro?"* Si esa comprobación no está escrita en el
   informe, la hipótesis está a medias.

**Lo que este test NO comprueba** —dilo, porque es la parte importante—:

- **Que la hipótesis sea la causa.** Estos datos muestran que dos cosas pasaron a la vez, no
  que una provoque la otra. Eso lo confirma un experimento o una fuente de fuera, nunca un
  informe.
- **Que los datos sean correctos.** Si la medición está rota, el análisis está roto y suena
  igual de convincente. Google Analytics además aplica **umbrales de datos** en algunos
  informes —oculta filas con pocos usuarios para que no se pueda identificar a nadie— y puede
  **muestrear** exploraciones muy grandes: son dos cosas distintas y las dos cambian las
  cifras que ves.
- **Que no haya un cuarto cambio más importante fuera de la tabla.** Lo que no se mide no
  aparece. Si tu mejor semana vino de un boca a boca, en Analytics pone "directo".

> Si solo hay tiempo para una, que sea la primera.

---

## De dónde salen los datos de verdad

**Esta skill no trae un dataset inventado, y es a propósito:** existe una cuenta pública con
datos de un negocio que existe, así que no hace falta fabricar nada. Tres vías, en este orden.

### Vía 1 — La cuenta demo de Google Analytics (para practicar, y sale de una tienda real)

Google mantiene una **cuenta de demostración pública y gratuita** alimentada por la
**Google Merchandise Store**, su tienda de merchandising (shop.merch.google). Entras con
cualquier cuenta de Google, sin pedir permiso a nadie y sin tocar tus propios datos.

**Con una precisión que hay que hacer siempre:** Google dice literalmente que *"los datos de
la cuenta de demostración están ofuscados, pero siguen siendo datos típicos de Analytics"*.
Vienen de una tienda real y de su tráfico real, y Google los altera antes de enseñarlos. Sirven
para aprender el método a la perfección; no son una ventana a las ventas reales de Google. Di
las dos mitades: ni "son inventados" ni "son las cifras reales de Google".

Los pasos exactos, los informes que conviene abrir y **cómo sacar los datos de ahí** están en
`references/cuenta-demo-ga4.md`. Léelo antes de guiar al usuario: **la cuenta demo tiene dos
límites duros** que hay que decirle de entrada — no deja exportar informes y no se puede
conectar por API (una API es la conexión automática entre dos herramientas; sin ella, los
datos se sacan a mano).

### Vía 2 — Sus propios datos, pegados (la que nunca falla)

Cualquier tabla sirve: una exportación de Google Analytics, de Meta Ads, de Shopify, de
Search Console o de su CRM. Se pega en el chat o se sube el fichero.

Pide el material **una sola vez y con precisión**, así:

> "Necesito hasta tres cosas, y con la primera ya empezamos:
> 1. **Obligatoria** — una tabla con una fila por canal (o campaña, o página), los dos
>    periodos que vamos a comparar y, para cada uno, los números absolutos: sesiones,
>    conversiones e ingresos si los hay. Con 10-20 filas me sobra.
> 2. **Si puedes** — la misma métrica principal semana a semana en las últimas 6-8 semanas.
>    Es lo que me deja saber si este cambio es grande o es lo de todas las semanas.
> 3. **Si puedes** — el desglose día a día de las dos semanas comparadas. Es lo que me deja
>    distinguir «ha bajado la semana» de «pasó algo un jueves».
>
> Si tu herramienta deja exportar a CSV, súbelo tal cual; si no, una captura de la tabla
> también me vale. Con solo la primera trabajo igual, pero los filtros 2 y 3 los marcaré
> como no comprobados en vez de fingir que los he descartado."

**Esta vía es la más fiable de las tres**, y conviene decirlo sin complejos: a cambio de
exportar o capturar una tabla, los datos son suyos y actuales.

Antes de pegar nada, un aviso que sí importa: **que no haya datos personales en la tabla**.
Nombres, emails o teléfonos de clientes no pintan nada en un análisis de métricas. Si el CSV
de su CRM los trae, que borre esas columnas antes.

### Vía 3 — El conector oficial de Google Analytics (solo Claude Code, y solo con GA4 propio)

Google publica un **servidor MCP** oficial para Analytics —MCP es el estándar que permite a
Claude conectarse a herramientas de fuera— en `github.com/googleanalytics/google-analytics-mcp`.
Es de solo lectura y deja pedir informes directamente, sin copiar y pegar.

Lo que hay que decir antes de que alguien se meta en el jardín:

- Google lo etiqueta como **experimental**, es Apache-2.0 y **se ejecuta en tu propio
  ordenador**. No hay versión para Claude.ai: si estás en la web, esta vía no es para ti.
  Requiere Python 3.10+, `gcloud`, un proyecto de Google Cloud y activar dos APIs.
- **No funciona con la cuenta demo.** Google lo dice explícitamente: la cuenta de
  demostración no se puede usar con la API Data de Analytics. Solo sirve con GA4 propio.
- **No hace falta para esta skill.** Para este análisis, una tabla pegada con los mismos
  campos da lo mismo; el conector solo aporta cuando quieres pedir muchos periodos o
  desgloses sin copiar y pegar. Ofrécelo solo si el usuario ya trabaja en Claude Code y tiene
  su propia propiedad de Analytics (su espacio de medición de una web o app).

### Lo que NO se hace

- **No prometas conectar la cuenta demo por API.** Está bloqueado por Google, y todo el que
  lo intente se va a comer un error de permisos. Verificado en la ayuda oficial el 2 de
  agosto de 2026.
- **No montes un scraper del panel de Analytics.** Va contra las condiciones de uso y además
  no hace falta: una captura de pantalla suele ser la vía más sencilla.
- **No pidas nunca credenciales.** Ni contraseña de Google, ni claves de API, ni un usuario
  de acceso a su cuenta. Si hace falta un dato que no tienes, se pide el dato, no la llave.
- **No rellenes huecos.** Si en la tabla falta una semana, un canal o una columna, dilo y
  trabaja con lo que hay. Estimar una cifra que luego alguien va a citar en una reunión es
  la peor cosa que puede hacer esta skill.
- **Si una fuente te bloquea o un informe no carga, es un dato, no un obstáculo que sortear.**
  Dilo y tira de la vía 2.

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| La tabla que te pegan no trae números absolutos, solo porcentajes | Párate y pídelos. Con porcentajes solos no se puede aplicar el filtro de volumen, que es medio método |
| Los dos periodos no son comparables (uno tiene 6 días, o incluye hoy) | Dilo, y pide de nuevo el mismo rango. No lo "ajustes" por tu cuenta: eso inventa datos |
| Todo ha caído a la vez y de golpe, el mismo día | Sospecha de la medición antes que del negocio. Míralo día a día y busca el día exacto del corte |
| El usuario solo tiene datos de una semana | No hay comparación posible. Dilo claro y ofrece describir la foto actual, avisando de que eso no es un análisis de cambios |
| La cuenta demo no carga o pide permisos | Es de Google y a veces tarda. Recarga; si sigue, salta a la vía 2 con cualquier CSV del usuario |
| El usuario pide "un dashboard bonito" | Esta skill no lo hace, y díselo en una línea: el panel enseña datos, esto dice qué ha cambiado |
| Solo llega la tabla de dos periodos, sin histórico ni desglose diario | Trabaja igual, pero escribe "no comprobado" en los filtros de variación normal y de un solo día. NO escribas "descartado" |
| El usuario escribe `/analista-lunes` y no pasa nada | La barra no está disponible en todas partes. Que lo pida en lenguaje normal: *"usa la skill analista-lunes con esta captura"*. Y que compruebe en Personalizar → Skills que está subida y activada |

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
