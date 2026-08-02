# El montaje, click a click

Todo lo de aquí está verificado el **2 de agosto de 2026**. Vuelve a comprobarlo antes de
mandar a nadie a crear una cuenta: estos planes cambian solos y sin avisar.

---

## Qué es gratis de verdad hoy

> Las condiciones exactas van cambiando. Lo que no cambia es el criterio: **si algo pide
> tarjeta para funcionar, no es la vía gratuita — sigue buscando.**

### Publicar la landing

| Servicio | Gratis | La trampa |
|---|---|---|
| **Netlify Drop** — `app.netlify.com/drop` | Sí. Plan gratuito permanente, con dominio propio y HTTPS incluidos | Netlify pasó a un modelo de **créditos**: el plan gratuito trae 300 créditos al mes, y cada despliegue de producción y cada giga de tráfico consumen créditos. Para una landing sobra; "ilimitado" ya no es. Además, si sueltas el fichero **sin iniciar sesión**, la URL queda protegida con contraseña hasta que reclames el proyecto. Los despliegues por debajo de 50 MB van finos |
| **Cloudflare Drop** — `cloudflare.com/drop` | Sí, y **sin cuenta** para empezar | Salió el 8 de julio de 2026: es lo más rápido que hay, pero la URL de previsualización **dura 60 minutos**. Si no la reclamas con una cuenta gratuita de Cloudflare dentro de esa hora, desaparece. Perfecto para enseñar algo en una reunión; peligroso si crees que es alojamiento permanente |
| **GitHub Pages** | Sí, pero **no para un negocio** | Necesitas cuenta de GitHub y subir el fichero al repositorio (se puede arrastrar desde el navegador, sin terminal). Y hay una letra pequeña que casi nadie menciona: sus condiciones dicen que **no está pensado para alojar gratis un negocio online o una tienda**. Para ejercicios y proyectos personales, perfecto; para la landing comercial de un cliente, no lo recomiendes |

**Recomendación por defecto:** Netlify Drop **con la cuenta gratuita ya creada antes de
empezar**. Es la única combinación que da URL pública, permanente y sin contraseña al primer
intento.

### Capturar el dato

| Servicio | Gratis | La trampa |
|---|---|---|
| **Tally** — `tally.so` | Formularios y respuestas **ilimitados**, lógica condicional, página de gracias personalizada, redirección al terminar, incrustar en tu web e integración con Google Sheets. Todo en el plan gratuito | **El correo al que rellena el formulario es de pago** (función del plan Pro). En gratis, las notificaciones son **para ti**. La marca de Tally también se queda: quitarla es Pro. **No repitas de memoria el precio del Pro:** cambia y varía según moneda y si pagas mes a mes o al año. Si hace falta decirlo, abre `tally.so/pricing` y lee el número de ese día |
| **Google Forms** | Sí, entero | Se incrusta con un iframe de ancho fijo que ignora tus colores y queda raro en móvil. Su "acuse de recibo" manda al usuario **una copia de sus propias respuestas**, que no es lo mismo que un correo de bienvenida |

**Recomendación por defecto:** Tally. Se ve mejor, se incrusta mejor y su integración con
Google Sheets es un botón. Y como es una empresa belga, los datos se almacenan en Europa —
un detalle que te ahorra explicaciones cuando escribas la política de privacidad.

### El destino

**Google Sheets**, conectado desde el propio formulario. Gratis en ambos casos:

- **Tally:** menú **Integrations → Google Sheets → Connect**, autorizas con tu cuenta de
  Google y eliges la hoja. Cada envío es una fila nueva, con marca de hora.
- **Google Forms:** pestaña **Respuestas → icono verde de Sheets**. Aún más directo, porque es
  la misma cuenta.

### El correo de bienvenida

Aquí es donde se cae la mitad de los tutoriales que hay por internet. **Ningún formulario
gratuito de los de arriba le manda un correo a quien lo rellena.** Hace falta una pieza más:

| Vía | Gratis | La trampa |
|---|---|---|
| **Zapier**, conectando el formulario con tu Gmail | Sí: 100 tareas al mes y automatizaciones de **2 pasos** | 100 tareas al mes = 100 leads al mes. Al 101 deja de dispararse; puede que te llegue un aviso, pero **no cuentes con verlo**: mira tú el contador. El límite de 2 pasos justo da para "formulario → enviar correo", ni un paso más. Dos trampas más: al crear la cuenta suele regalarte unos días de plan de pago —cuando caduca se para lo que dependiera de funciones premium, así que **comprueba que tu automatización funciona ya sin la prueba**— y algunas apps de correo están marcadas como "premium"; si la tuya lo está, usa "Email by Zapier" (funciona, pero el remitente no es tu dirección) |
| **Brevo**, con su automatización de bienvenida | Sí: 300 correos al día y automatización incluida | Ojo: **los contactos no son ilimitados**, hay un tope de contactos guardados y otro, mucho más bajo, de contactos que pueden entrar en automatizaciones (del orden de 2.000). Mira las dos cifras vigentes antes de prometer nada. Es mucho más volumen que Zapier, pero son más pasos de montaje y una cuenta más |
| **MailerLite** | Sí, pero **se ha encogido mucho** | En junio de 2026 bajó a **250 suscriptores y 2.500 correos al mes**, con 3 automatizaciones de 5 pasos como máximo. Si has leído en cualquier sitio que da 1.000 gratis, ese artículo está desactualizado. Dilo si alguien lo menciona |

**Recomendación por defecto:** Zapier para el primer circuito —es un correo, en dos pasos, en
cinco minutos—, y Brevo en cuanto quieras una secuencia en vez de un correo suelto, o en
cuanto veas que vas a pasar de 100 leads al mes.

---

## La secuencia completa (unos 15 minutos de clics)

Pide **un paso cada vez** y espera respuesta. Quince pasos de golpe se abandonan en el tercero.

### 1 · Cuentas (antes de nada)

Que cree las tres cuentas gratuitas de golpe, con el mismo correo: **Netlify**, **Tally** y
**Zapier** (o Brevo). Con Google ya tiene Sheets. Ninguna pide tarjeta. Si alguna la pide,
para y avisa.

**Dos avisos que ahorran media hora de atasco:**

- **Que use una cuenta de Google personal**, no la del trabajo. En las cuentas de empresa el
  administrador puede tener bloqueado conectar aplicaciones de terceros, y entonces el botón
  de "conectar con Google Sheets" falla sin explicar por qué.
- **Que permita las ventanas emergentes** en el navegador donde vaya a autorizar. Las
  pantallas de permisos de Google se abren en una ventana nueva; si el navegador la bloquea,
  parece que no ha pasado nada.

### 2 · La landing

Le das el fichero, **ya llamado `index.html`** (no `landing.html`: ese nombre es el que
espera cualquier alojamiento para servir la página de inicio, y saltárselo es la causa más
frecuente de "he publicado y sale en blanco").

Si está en Claude.ai y no puede descargar el fichero, que copie el bloque de código entero y
lo pegue en un editor de **texto plano** —Bloc de notas en Windows; TextEdit en Mac con
*Formato → Convertir en texto plano*— y lo guarde como `index.html`. Que compruebe que el
nombre no acaba en `.html.txt`: si al abrirlo con doble clic ve el código en vez de la
página, está mal guardado.

### 3 · Publicarla

> "Abre `app.netlify.com/drop`, inicia sesión, y arrastra el fichero al recuadro. Pégame la
> dirección que te salga."

Sale una URL tipo `algo-aleatorio.netlify.app`. Desde **Site configuration → Change site
name** puede ponerle un nombre decente. Que lo haga ahora: cambiar la URL después, cuando ya
la ha mandado a gente, es un lío.

> **Y esto es lo que casi nadie avisa:** para **actualizar** la página más adelante no hay
> que volver a la pantalla de "drop" —eso puede crearle un sitio nuevo, con otra dirección y
> el trabajo duplicado—. Hay que entrar **en el proyecto que ya existe** y soltar ahí el
> fichero actualizado (en Netlify: el proyecto → **Deploys** → arrastrar encima). Díselo la
> primera vez, no la segunda.

### 4 · El formulario

> "En Tally, **Create form**. Un solo campo: correo electrónico. Añade la casilla de
> consentimiento que te he escrito. Y en **Thank you page**, pega el texto de gracias."

**La casilla tiene que ser obligatoria, y eso es un ajuste aparte.** "Sin marcar por defecto"
y "obligatoria" no son lo mismo: si solo haces lo primero, cualquiera puede enviar el
formulario sin consentir nada y te quedas con un correo que no puedes usar. Marca el campo
como **obligatorio (Required)** en sus opciones.

> **Prueba negativa, y es de las que más valen:** intenta enviar el formulario **sin** marcar
> la casilla. Si te deja, no está bien configurado. Esta prueba tarda cinco segundos y te
> ahorra un problema de los caros.

Después: **Share → Embed**. Tally da el código para pegar; cópialo tal cual. Si te ofrece
versión HTML y versión JavaScript, coge la HTML: menos cosas que pueden fallar.

Ese código **no lo tiene que pegar él a mano en el HTML**: que te lo pase por el chat y lo
insertas tú en el hueco marcado del `index.html`, se lo devuelves ya montado, y él solo
vuelve a subir el fichero. Debajo del formulario va **siempre el enlace normal** a la página
pública del formulario:

```html
<!-- AQUÍ VA EL CÓDIGO DE TALLY -->

<p class="fallback">
  ¿No ves el formulario?
  <a href="https://tally.so/r/TU-FORMULARIO">Ábrelo en una página aparte</a>.
</p>
```

Y a subirlo otra vez: **dentro del proyecto que ya existe** (proyecto → **Deploys** →
arrastrar el fichero encima), no en la pantalla de "drop". Así se sobrescribe y la dirección
sigue siendo la misma.

### 5 · La hoja

> "En Tally: **Integrations → Google Sheets → Connect**. Autoriza con tu Google y crea una
> hoja nueva. Se llamará como el formulario."

### 6 · El correo

En Zapier, un Zap de dos pasos. Traduce los dos nombres, que en inglés no dicen nada:
**trigger** es *lo que lo pone en marcha* y **action** es *lo que pasa entonces*.

- **Trigger (lo que lo dispara):** Tally → *New Submission* → elige tu formulario.
- **Action (lo que ocurre):** Gmail → *Send Email* → el destinatario es el campo de correo
  del formulario. Este es el paso donde más se falla: hay que **elegir el campo del
  formulario**, no escribir una dirección fija. Si escribes una dirección, todos los correos
  de bienvenida te llegarán a ti.

Asunto y cuerpo, los que has escrito tú. **Que lo pruebe con el botón de test de Zapier antes
de publicarlo**, y que luego lo publique: un Zap sin publicar no se dispara nunca, y es el
fallo más frecuente de todos.

> Para probarlo, Zapier necesita **una respuesta de ejemplo** en el formulario. Si dice que
> no encuentra datos, es que aún no has enviado ninguna: manda una tú y vuelve a darle a
> buscar.

### 7 · La prueba de extremo a extremo

El paso 1 del test de la mentira. Móvil, datos móviles, incógnito, correo distinto. Las tres
comprobaciones: que está la fila, que ha llegado el correo, y que ambos son de **ese** envío.

> **No te asustes con las horas.** La hoja puede guardar la marca de tiempo en UTC, que en
> España son una o dos horas menos que tu reloj. Un desfase redondo de 60 o 120 minutos es la
> zona horaria, no un circuito roto.

---

## De dónde salen estos datos

Comprobado el 2 de agosto de 2026 en las páginas oficiales. Si vas a repetir una de estas
cifras delante de alguien, ábrelas antes:

| Dato | Dónde comprobarlo |
|---|---|
| Netlify Drop y su funcionamiento sin cuenta | `docs.netlify.com/start/quickstarts/netlify-drop-quickstart/` |
| Plan gratuito de Netlify y modelo de créditos | `netlify.com/pricing/` |
| Cloudflare Drop y la ventana de 60 minutos | `cloudflare.com/drop` · changelog de Cloudflare del 8-jul-2026 |
| Qué incluye el plan gratuito de Tally y qué es Pro | `tally.so/pricing` |
| Que incrustar formularios es gratis en Tally | `tally.so/help/embed-your-form` |
| Integración de Tally con Google Sheets | `tally.so/help/google-sheets-integration` |
| Dónde almacena Tally los datos y su acuerdo de encargado | `tally.so/help/gdpr` |
| Plan gratuito de Zapier: 100 tareas y 2 pasos | `help.zapier.com` → "What's included in Zapier's Free plan?" |
| Límites, contadores y avisos de Zapier | `help.zapier.com` → "Zap limits" |
| Qué es una app premium en Zapier | `help.zapier.com` → "What is a premium app?" |
| Que GitHub Pages no es hosting gratuito para negocios | `docs.github.com` → GitHub Pages: "limits" y condiciones de uso |
| Recorte del plan gratuito de MailerLite (junio 2026) | `mailerlite.com/pricing` y `mailerlite.com/help/free-plan-update-faq` |
| Plan gratuito de Brevo | `brevo.com/pricing/` |

---

## Cuando el usuario ya paga algo

Si ya tiene HubSpot, GoHighLevel, Mailchimp de pago, Brevo de pago o cualquier CRM: **úsalo**
y salta la pieza 4 entera. Montarle un circuito paralelo a algo que ya paga es regalarle un
sitio más donde perder leads.

En ese caso, el trabajo es distinto: la landing igual, y el formulario el que ya trae su
herramienta.
