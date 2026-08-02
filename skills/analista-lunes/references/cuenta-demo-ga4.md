# La cuenta demo de Google Analytics — un negocio real, gratis, hoy mismo

Google mantiene una **cuenta de demostración pública** de Google Analytics 4 (GA4 es la
versión actual de Google Analytics) alimentada por negocios que existen de verdad. Es la razón
por la que esta skill no necesita fabricar un dataset: cualquiera con una cuenta de Google
puede practicar el mismo día.

> **La precisión que hay que hacer siempre, y que juega a favor:** Google dice literalmente
> que *"los datos de la cuenta de demostración están ofuscados, pero siguen siendo datos
> típicos de Analytics"*. Es decir: salen del tráfico real de una tienda real, y Google los
> altera antes de publicarlos. No son inventados y tampoco son las cifras reales de Google.
> Sirven para aprender el método; no para sacar conclusiones sobre el negocio de Google ni
> para trasladarlas al tuyo.

> **Verificado el 2 de agosto de 2026** contra la ayuda oficial de Google:
> `https://support.google.com/analytics/answer/6367342`.
> Si algo de lo que hay aquí no coincide con lo que ves en pantalla, **manda la ayuda oficial,
> no este fichero**. Google cambia la interfaz cada pocos meses; los conceptos aguantan, los
> nombres de los menús no siempre.

---

## Cómo se entra

**Paso 1.** Inicia sesión en tu cuenta de Google (cualquiera; si no tienes, te la pedirá al
entrar).

**Paso 2.** Abre este enlace:

- **Google Merchandise Store** (datos web, es la que usamos):
  `https://analytics.google.com/analytics/index/demoaccount?appstate=/p213025502`
- Flood-It! (una app de móvil, por si quieres comparar):
  `https://analytics.google.com/analytics/index/demoaccount?appstate=/p153293282`

> Si el enlace directo no funciona, entra en `https://support.google.com/analytics/answer/6367342`
> y pulsa desde ahí el enlace de la propiedad. Es la ruta que Google mantiene actualizada.

**Paso 3.** El enlace **añade la cuenta demo a tu Analytics** y te deja dentro. No hay
formulario, ni aprobación, ni tarjeta.

**Qué es lo que estás viendo:** en palabras de Google, *"Google Merchandise Store es un sitio
de comercio electrónico que vende productos de la marca Google"*. Es una tienda que existe
(shop.merch.google), con su tráfico, su contenido y sus transacciones de verdad.

### Cómo se quita, cuando termines

**Administrar** → **Gestión de accesos a la cuenta** (con la cuenta demo seleccionada) →
**Retirar mi acceso**.

Conviene saber que la cuenta demo **cuenta dentro del límite de cuentas de Analytics** que
puedes tener: el máximo son 2000 cuentas por cuenta de Google, así que en la práctica no le
va a estorbar a nadie.

---

## Los dos límites duros (dilos antes de que se los encuentre)

Esto no son manías: está escrito en la ayuda de Google, y descubrirlo a mitad de ejercicio
frustra bastante.

1. **No se puede exportar.** La cuenta demo no incluye *"exportación de informes ni de
   exploraciones"*. El botón de compartir/descargar no te va a servir. No es un fallo tuyo.
2. **No se puede conectar por API.** La cuenta demo **no funciona con la API Data de
   Analytics**. Traducido: el conector oficial de Google Analytics para Claude Code (el
   servidor MCP) **no puede leer la cuenta demo**. Solo funciona con una propiedad tuya.

Tampoco están disponibles la dimensión de ID de dispositivo ni la técnica "Exploración de
usuarios". Todos los usuarios entran con **rol de lector**: puedes consultar, filtrar,
cambiar fechas y crear tus propias vistas, pero no modificar nada. Que es justo lo que quieres.

---

## Entonces, ¿cómo pasan los datos a Claude?

Dos formas, y las dos tardan lo mismo que leer esta frase.

### A) Captura de pantalla (la que mejor funciona)

Encuadra la tabla del informe —**cabeceras y fechas incluidas**— y sube la imagen al chat.

**Cómo se hace una captura, por si nunca has hecho una:**
- **Mac:** `Cmd + Shift + 4` y arrastras un recuadro sobre la tabla. La imagen aparece en el
  escritorio.
- **Windows:** `Windows + Shift + S` y arrastras el recuadro. La imagen queda copiada; puedes
  pegarla directamente en el chat con `Ctrl + V`.

Después, arrastra el archivo al chat de Claude (o usa el clip de adjuntar). Con 10-15 filas
visibles hay de sobra para un informe.

**Truco:** pon el zoom del navegador al 100 % o menos antes de capturar, para que quepan las
dos columnas de la comparación de periodos.

**Y una comprobación que no te puedes saltar:** Claude suele leer bien las tablas en imágenes,
pero no siempre. Antes de fiarte del informe, mira que las cabeceras y dos o tres cifras
coincidan con lo que hay en pantalla. Si ha leído mal, pega la tabla como texto (opción B).

### B) Seleccionar la tabla y copiar

Arrastra el ratón por encima de la tabla, copia y pega en el chat. A veces sale ordenada y a
veces sale un churro de números sin cabecera: depende del navegador. **Si sale mal, no
pierdas tiempo peleándote: haz la captura.**

> Lo que **no** vas a poder hacer es descargar un CSV desde la cuenta demo. Ya lo sabes por
> el límite 1. Cuando trabajes con **tu propio** Analytics, ahí sí: el botón de compartir →
> descargar archivo funciona con normalidad.

---

## Qué informes abrir (y en qué orden)

La ruta habitual es **Informes** en el menú de la izquierda. Si tu menú no coincide
exactamente con lo que pone aquí —Google reorganiza estas colecciones cada cierto tiempo—,
usa **el buscador de la parte de arriba** y escribe el nombre del informe. Es la forma más a
prueba de rediseños.

| Capa | Informe | Qué buscas |
|---|---|---|
| Llegan | **Adquisición → Adquisición de tráfico** | Qué canal ha subido o bajado. Es el punto de partida habitual de casi cualquier análisis |
| Se quedan | **Interacción → Páginas y pantallas** | Qué páginas se han movido, y si el cambio viene de una sola |
| Convierten | **Interacción → Eventos** o el informe de conversiones | Eventos clave: qué se ha disparado más o menos |
| Pagan | **Monetización → Compras del comercio electrónico** | Pedidos, ingresos, ticket medio. En la tienda de Google hay datos de verdad aquí |

### Los dos ajustes que hay que tocar sí o sí

1. **El rango de fechas** (arriba a la derecha): elige **una semana completa, de lunes a
   domingo**. Nunca "últimos 7 días", que arrastra el día de hoy a medias.
2. **La comparación**: en el mismo selector de fechas, activa **Comparar** y elige el periodo
   anterior. Así la tabla trae las dos semanas en la misma pantalla y una sola captura ya
   sirve para todo el análisis.

Sin el paso 2, tendrás que hacer dos capturas y cuadrarlas a mano. Se puede, pero es más
fácil equivocarse.

### Las dos capturas de más que valen su peso en oro

Con la tabla de dos periodos ya se puede trabajar, pero **dos de los cuatro filtros necesitan
datos que esa tabla no tiene**. Si quieres el análisis completo, haz también:

1. **El histórico.** Mismo informe, rango de las **últimas 6-8 semanas**, y en el gráfico de
   arriba elige el detalle **semanal**. Sirve para saber si el cambio de esta semana es grande
   o es lo que hace esa métrica todas las semanas.
2. **El desglose diario.** Mismo informe, la semana analizada, con el gráfico en detalle
   **diario**. Sirve para distinguir "ha bajado la semana" de "pasó algo un jueves".

Son dos capturas más y treinta segundos. Sin ellas el informe sigue saliendo, pero esos dos
filtros se quedan en **"no comprobado"** — y así es como tiene que aparecer escrito.

---

## Un aviso sobre las cifras que veas

- **Umbrales de datos.** Google puede ocultar filas con pocos usuarios para que no se pueda
  identificar a nadie. Cuando pasa, aparece un aviso en la parte de arriba del informe. No es
  un error: es privacidad, y significa que los totales pueden no cuadrar con la suma de las
  filas.
- **Muestreo.** En exploraciones muy grandes, Analytics puede analizar una muestra en lugar de
  todos los eventos. Es distinto de los umbrales, y también sale avisado en pantalla.
- **Son datos ofuscados de una tienda de Google, no de tu negocio.** Sirven para aprender el
  método a la perfección; las conclusiones no se trasladan a nada tuyo — ni siquiera a Google.

Si en el informe que generes hay cifras afectadas por cualquiera de las dos cosas, **dilo en
el apartado "Lo que estos datos no pueden decirme"**. Es exactamente el tipo de detalle que un
analista bueno menciona y uno malo se calla.
