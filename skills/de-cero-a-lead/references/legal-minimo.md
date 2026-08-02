# El mínimo legal (España / UE)

> Esto es el mínimo operativo para no montar algo obviamente ilegal. **No es asesoramiento
> jurídico.** Si el usuario va a captar en serio, que se lo revise alguien que cobre por
> revisarlo. Dilo tal cual: es más creíble que fingir seguridad.

---

## La regla de decisión

**¿Van a rellenar ese formulario personas reales que no seas tú?**

- **Sí** → las tres cosas de abajo van en la página **antes** de que exista la primera visita.
- **No** → **modo prueba**: el formulario lo rellena solo el usuario, con su propio correo, y
  la URL no se comparte con nadie. Se aprende el circuito exactamente igual.

No hay término medio del tipo "lo pongo esta semana". El día que se difunde la URL ya se están
recogiendo datos.

---

## Las tres cosas obligatorias

### 1 · La casilla de consentimiento

- **Sin marcar por defecto.** Una casilla premarcada no es consentimiento.
- **Y obligatoria.** Ojo, que no es lo mismo: "sin marcar" y "obligatoria" son dos ajustes
  distintos del formulario. Si solo haces el primero, se puede enviar sin consentir y te
  quedas con un correo que no puedes usar. Compruébalo intentando enviar sin marcarla: tiene
  que **impedirte** el envío.
- **Separada del botón de enviar.** "Al enviar aceptas..." no vale como casilla.
- **Con enlace a la política de privacidad**, que se pueda abrir sin perder lo escrito.

Texto modelo (sustituye lo que va entre llaves):

> ☐ He leído y acepto la [política de privacidad]({{enlace}}). Acepto que {{nombre o razón
> social}} trate mi correo para enviarme {{lo que prometes}}.

Si además vas a mandar comercial, va **otra casilla aparte**, opcional, y el formulario se
tiene que poder enviar sin marcarla:

> ☐ Quiero recibir también consejos y ofertas de {{nombre}}. (Opcional, y puedes darte de
> baja en cualquier momento.)

### 2 · La política de privacidad

Una página accesible desde la landing —enlace en el pie y en la casilla— con, como mínimo:

| Apartado | Qué tiene que decir |
|---|---|
| **Quién trata tus datos** | Nombre o razón social, NIF si es empresa, dirección y un correo de contacto que exista |
| **Qué datos** | Solo los que pide el formulario. Si es el correo, dilo: "tu dirección de correo electrónico" |
| **Para qué** | El envío del recurso, y —si procede— comunicaciones comerciales. Cada finalidad, separada |
| **Con qué base legal** | Tu consentimiento, que has dado marcando la casilla |
| **Cuánto tiempo** | Un plazo concreto o un criterio claro ("hasta que te des de baja") |
| **Quién más lo ve** | La herramienta de formularios, la hoja de cálculo y la de correo. Con nombre |
| **Dónde están** | Si alguno de esos servicios está fuera del Espacio Económico Europeo, dilo |
| **Tus derechos** | Acceso, rectificación, supresión, oposición, limitación y portabilidad, y **cómo ejercerlos**: un correo al que escribir |
| **Reclamación** | Que puede reclamar ante la autoridad de control (en España, la AEPD) |

**Dónde está cada cosa, en el montaje por defecto de esta skill:**

- **Tally** es una empresa belga y almacena las respuestas en Europa. Ofrece acuerdo de
  encargado del tratamiento.
- **Google Sheets**, **Netlify**, **Cloudflare** y **Zapier** son estadounidenses. Va en el
  apartado de "dónde están".

Verifica esto en el momento de escribir la política: las empresas cambian de proveedor y de
sede, y una política de privacidad con datos falsos es peor que no tenerla.

### 3 · La frase honesta bajo el formulario (la "primera capa")

En la propia landing, junto al botón, en letra normal y legible. No es solo una promesa
simpática: es la información mínima que tiene que ver **antes** de dar el dato — quién lo
recoge, para qué, cómo se ejercen los derechos, y dónde está el detalle completo.

> **{{Nombre o razón social}}** trata tu correo para enviarte {{lo prometido}}. Nada más.
> Puedes ejercer tus derechos de acceso, rectificación y supresión escribiendo a
> {{correo de contacto}}. Más detalle en la [política de privacidad]({{enlace}}).

Y que sea verdad. Si vas a mandar una secuencia de cinco correos, no escribas "nada más".

**Dos frases que no puedes poner en este montaje** (y que se copian de plantillas todo el
rato):

- **"Puedes darte de baja en un clic."** Con un correo suelto disparado por una
  automatización no hay enlace de baja: no existe esa lista de la que borrarse. Solo puedes
  prometerlo si montas la pieza de correo con una herramienta de email marketing que gestione
  las bajas. Mientras tanto, di la verdad: *"si no quieres saber más de mí, respóndeme y no
  te vuelvo a escribir"* — y cúmplelo.
- **"No comparto tu dirección con nadie."** Es falso en cuanto usas un formulario, una hoja
  de cálculo y una herramienta de correo: esos tres proveedores tratan el dato. Lo cierto es:
  *"no vendo ni cedo tu dirección a nadie para sus propios fines; la tratan solo los
  proveedores que aparecen en la política de privacidad"*.

---

## Errores que se cometen todo el rato

| Error | Por qué es un problema |
|---|---|
| Casilla premarcada | No es consentimiento válido. Es el fallo más repetido y el más fácil de arreglar |
| "Al enviar aceptas la política" | El consentimiento tiene que ser una acción separada y deliberada |
| Enlace a una política que no existe | Peor que no tener enlace: demuestra que sabías que hacía falta |
| Pedir teléfono "por si acaso" | Si no vas a llamar esta semana, no lo pidas |
| Copiar la política de privacidad de otra web | Vas a acabar con el nombre y el NIF de otra empresa en tu página. Pasa constantemente |
| Añadir un píxel de Meta sin banner de consentimiento | Un píxel es un rastreador de terceros. Necesita consentimiento **previo** a cargarse |
| Meter el correo del lead en la URL | Nunca. Ni para probar |

---

## Si el usuario dice "eso ya lo miro luego"

No discutas ni des un sermón. Ofrece la salida buena:

> "Perfecto, pues lo montamos en **modo prueba**: mismo circuito, mismas herramientas, y lo
> pruebas tú con tu propio correo. Cuando tengas los textos, cambias dos párrafos y ya está
> vivo. Así aprendes lo mismo hoy y no arrastras un problema."

Es más honesto y, sobre todo, funciona: casi nadie vuelve a poner los textos legales después
de haber empezado a recoger correos sin ellos.
