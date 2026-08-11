---
name: de-cero-a-lead
description: Monta el circuito de captación entero —landing, formulario, hoja de destino y email de bienvenida— con herramientas gratuitas, sin programar ni terminal. Para captación y conversión de leads.
---

# /de-cero-a-lead — El circuito entero, funcionando hoy

Casi todo el mundo tiene la oferta, tiene el copy y tiene el público. Y sigue sin tener
**un sitio donde caiga el lead**. El embudo existe en un Figma, en una diapositiva o en la
cabeza de alguien, pero no hay ninguna dirección que puedas mandar por WhatsApp esta tarde.

Esto monta esa dirección. Cuatro piezas encadenadas: una página publicada, un formulario que
captura, una hoja donde aparece la fila, y un correo que llega. Y la prueba de que funciona
no es que se vea bonito: es que te llega el correo.

**Disparadores:** "/de-cero-a-lead", "monta una landing", "necesito capturar leads",
"quiero una página de captación", "conecta el formulario con una hoja", "email de
bienvenida automático", "el circuito de captación", "monta mi embudo", "una landing gratis
sin programar".

> **Cómo se llama esta skill.** En **Claude Code** y **Cowork**: `/de-cero-a-lead`.
> En **Claude.ai** no hay comandos con barra — pídelo con palabras y se activa
> sola; si no la coge, nómbrala: *"usa la skill de-cero-a-lead"*.


---

## Antes de empezar

1. **Arranca como manda `references/_arranque.md`.** Busca `perfil-marca.md` antes de
   saludar. Si está, resume en dos líneas y confirma. Si no está, modo exprés de tres
   preguntas y adelante — **no mandes a nadie a ejecutar otra skill primero**: está en una
   clase y quiere montar su circuito hoy.
   Si quiere practicar sin negocio propio, tira de `ejemplos/ofertas-de-practicas.md`.

2. **Pide los cuatro datos legales AHORA, no al final.** Es la barrera más tonta de todo el
   kit y llega siempre tarde: mucha gente no se sabe la razón social de su propia empresa,
   y es normal.
   > "Cuatro datos que van en los textos legales de la página. Si no los tienes a mano,
   > seguimos igual y los rellenas al final:
   > razón social · NIF · domicilio fiscal · correo de contacto."

3. **Contempla que ya tenga web.** Es la pregunta que sale siempre y no estaba resuelta:
   > "¿Tienes ya web? Esto no la pisa. Hay tres formas de publicarlo y elegimos la que te
   > encaje."

   | Dónde | Qué implica |
   |---|---|
   | **Subdominio** (`recurso.tumarca.com`) | Lo más limpio. Un registro CNAME en tu DNS. Tu web no se toca: **el DNS no es la web** |
   | **Ruta de tu web** (`tumarca.com/recurso`) | Mejor para SEO, pero necesitas a quien la mantenga |
   | **Alojamiento gratuito aparte** | Cero riesgo, dirección fea. Vale para probar hoy |

4. **Comprueba que puedes buscar en internet.** Los planes gratuitos de estas herramientas
   cambian cada pocos meses —MailerLite recortó el suyo en junio de 2026—. Antes de mandar a
   alguien a crear una cuenta, comprueba **hoy** que sigue siendo gratis:
   > "Voy a verificar que estas cuatro herramientas siguen teniendo plan gratuito antes de
   > que te crees ninguna cuenta. Si algo ha cambiado, te lo digo y buscamos otra."
4. **Haz la pregunta legal antes de escribir una sola línea de HTML.** No al final:
   > "¿Este formulario va a recoger datos de personas reales, o lo montamos en modo prueba y
   > lo rellenas tú con tu propio correo? Te lo pregunto ahora porque, si es real, hay tres
   > cosas que tienen que estar en la página desde el minuto uno."
5. **Pregunta qué hay al otro lado.** Sin algo que el visitante quiera, no hay lead: hay un
   formulario vacío. Si no lo tiene claro, ayúdale a definirlo antes de maquetar nada.

### Lo que esta skill no hace por ti

Dilo pronto, para que nadie se quede esperando:

- **No crea cuentas.** No puedo registrarme en Netlify, Tally ni Zapier por ti, ni aceptar
  sus términos en tu nombre. Esos clics los das tú. Yo te digo exactamente cuáles.
- **No pide contraseñas ni claves.** Nunca. Si me las ofreces, te las rechazo: no hacen
  falta para nada de esto.
- **No publica nada sin que lo veas.** El HTML te lo doy a ti; el arrastrar y soltar lo
  haces tú, mirándolo.

---

## Las cuatro piezas

| # | Pieza | Qué hace | Herramienta por defecto |
|---|---|---|---|
| 1 | **La landing** | Explica la oferta y pide una sola cosa | Un fichero HTML que genero yo, publicado gratis |
| 2 | **La captura** | Recoge el dato y dice "gracias" | Formulario gratuito, incrustado en la landing |
| 3 | **El destino** | Donde aparece la fila, con hora | Google Sheets |
| 4 | **La bienvenida** | El correo que llega solo | Automatización gratuita |

El detalle click a click, con las cuentas exactas y lo que cuesta cada límite, está en
`references/montaje.md`. Léelo antes de dar el primer paso.

---

## El método

### Paso 1 — La oferta (5 minutos, y es el paso que más gente se salta)

Antes de la página: **qué recibe a cambio del correo, y cuándo.** Una frase.

Mal: "suscríbete a mi newsletter". Bien: "te mando la plantilla de presupuesto cerrado que
uso con mis clientes, ahora, al correo".

Regla dura: **pide solo los datos que vas a usar esta semana.** Si únicamente vas a mandar
un email, pide el email. Cada campo extra es un dato que tienes que justificar, proteger y
borrar algún día — y una caída de conversión que te regalas.

### Paso 2 — La landing

La escribo yo entera, en **un solo fichero HTML autocontenido**: sin frameworks, sin
dependencias, sin nada que instalar (todo va dentro del mismo fichero, por eso se publica
arrastrándolo). **Se llama `index.html` desde el principio**, no `landing.html`: ese nombre
evita la causa más común de "he publicado y sale en blanco", y no cuesta nada de entrada.

**Del chat al fichero — dilo, porque es donde más gente se atasca:**

- **En Claude Code:** el fichero ya está creado en su carpeta. Dile la ruta exacta.
- **En Claude.ai:** que descargue el fichero que le genero. Si no puede descargarlo, que
  copie el bloque de código entero, lo pegue en un editor de texto plano (Bloc de notas en
  Windows, TextEdit en Mac **en modo texto plano**: menú *Formato → Convertir en texto
  plano*) y lo guarde como `index.html`.
- **Comprobación antes de seguir:** que el nombre acabe en `.html` y **no** en `.html.txt`.
  Si al abrirlo con doble clic ve la página, está bien. Si ve el código, está mal guardado.

La anatomía obligatoria, las reglas de copy y por qué "un solo fichero" no es pereza sino
una decisión con consecuencias, están en `references/landing.md`.

### Paso 3 — Publicarla

Arrastrar el fichero a un servicio de alojamiento gratuito. Tarda menos de un minuto y no
hay terminal por ningún lado. Las tres opciones verificadas, con sus trampas, en
`references/montaje.md`.

**Ojo con la segunda vez.** Cuando actualice la página (por ejemplo al pegar el formulario),
no vale volver a soltar el fichero en la página de "drop": eso puede crearle un sitio nuevo
con otra dirección. Hay que entrar **en el proyecto que ya existe** y soltarlo ahí. El paso
exacto, en `references/montaje.md`.

### Paso 4 — La captura

Formulario gratuito incrustado en la página. **Deja siempre, además del formulario
incrustado, un enlace normal a la página del formulario.** Si el widget no carga —bloqueador,
conexión mala, móvil viejo—, el visitante sigue teniendo por dónde entrar. Un enlace nunca
falla.

### Paso 5 — El destino

Conectar el formulario con una hoja de cálculo. Es un botón. A partir de ahí, cada envío es
una fila con su hora.

Esto ya es un CRM. Un CRM malo, pero uno de verdad: los primeros meses de un negocio pequeño
caben en una hoja, y ninguna herramienta de pago te va a conseguir tu primer cliente antes
que esta.

### Paso 6 — La bienvenida

El correo automático. Cuatro frases: confirma que ha llegado bien, entrega lo prometido
—enlace incluido—, di qué va a pasar después, y firma con un nombre de persona.

Aquí está la trampa que casi todos los cursos se saltan y que tú vas a decir en voz alta:
**el formulario gratuito te avisa a ti, no a quien lo rellena.** Para que el lead reciba un
correo hace falta una segunda herramienta. Cuál, y qué límite tiene cada una, en
`references/montaje.md`.

### Paso 7 — La prueba de extremo a extremo

Sin esto, no has montado nada: has montado la sensación de haber montado algo. Está en el
test de la mentira, aquí abajo, y es el paso 1.

---

## Lo que entregas

```markdown
# Circuito de captación · {{negocio}}
_{{fecha}} · generado con /de-cero-a-lead_

## La oferta
{{qué recibe, cuándo, y el único dato que se le pide}}

## Las cuatro piezas
| Pieza | Herramienta | Cuenta usada | Enlace | El límite que te va a morder |
|---|---|---|---|---|

## La landing
Fichero: `index.html` · Publicada en: {{URL real}}

## Los textos legales que lleva la página
{{casilla de consentimiento, párrafo bajo el formulario, política de privacidad}}

## El email de bienvenida
{{asunto + cuerpo, tal cual va a salir}}

## Prueba de extremo a extremo
- [ ] Envío de prueba hecho a las {{hora}} desde {{dispositivo}}
- [ ] Fila en la hoja: sí / no
- [ ] Correo recibido: sí / no · tardó {{tiempo}}

## Lo que se rompe primero
{{el límite gratuito que vas a tocar antes, y qué harás ese día}}
```

### Y además, dos ficheros

Cuando el circuito esté probado de extremo a extremo, entrega **dos cosas**:

1. **`index.html`** — la landing, lista para subir. Ya la tiene.
2. **El entregable con sus colores**, siguiendo `references/_entregable.md`: la oferta y por
   qué se eligió, el copy final bloque a bloque, los tres textos legales, el email de
   bienvenida, la checklist de montaje con los clics, **los techos de cada plan gratuito con
   su cifra**, y el diario de investigación (qué herramientas se comprobaron, cuáles seguían
   siendo gratis y cuáles no).

Ese segundo fichero es el que abrirá dentro de seis meses cuando algo deje de funcionar.

---

### Dos reglas que no se negocian

**1. No entregues el circuito hasta que haya pasado un lead de verdad por él.** Un HTML
bonito con un formulario que no llega a ningún sitio es peor que no tener nada, porque te
hace creer que ya está.

**2. El apartado "lo que se rompe primero" es obligatorio.** Todo esto es gratis hasta un
número concreto. Escribe ese número. Quien no sabe dónde está el techo se estrella contra
él el día que por fin le funciona algo, que es justo el peor día.

---

## Tres cosas que antes quedaban en el aire

### ¿Se pide el correo o no?

`/abogado-del-diablo` recomienda publicar el recurso **sin pedir el correo** para vencer la
desconfianza. Esta skill monta un formulario que **sí** lo pide. Los dos consejos son buenos
y no se contradicen si se ordenan bien:

| Cuándo | Qué se hace |
|---|---|
| **Su problema es que no le creen** (desconfianza alta, marca joven, sin casos publicados) | Publica la pieza **abierta**, sin puerta. Y al final de la pieza, un formulario para lo siguiente: la plantilla editable, el diagnóstico, la sesión |
| **Su problema es que no le compran** (le entienden, le piden precio y no cierran) | Formulario delante. Quien lo rellena ya está caliente |
| **Duda** | Abierto + puerta al final. Se capta menos y se capta mejor |

**La regla:** la puerta se pone **después** de haber dado algo, nunca antes.

### ¿Y la lista que ya tengo?

Primera pregunta de todo el que ya tiene suscriptores, y hasta ahora no estaba escrita:

- **Lista aparte, no la misma.** Los del recurso nuevo llegan con un interés concreto y en
  una fecha concreta. Mezclarlos con la lista vieja borra esa información, que es justo lo
  que `/email-que-piensa` necesita para decidir a quién escribir.
- **A los de la lista vieja se les manda el recurso una vez**, como aviso, no como campaña —
  y solo si consintieron recibir comunicaciones comerciales. Si no consta, no se manda.
- **Etiqueta de origen desde el minuto uno.** `origen: recurso-{nombre}` y fecha. Cuesta un
  clic y vale oro dentro de tres meses.

### El cierre: dos columnas, siempre

No todo lo que sale de aquí lo puede ejecutar quien está delante. En la prueba real, tres de
ocho pendientes dependían de otras personas y el usuario dijo *"esto ya no lo puedo decidir
yo sola"*. Cierra así:

| Puedes hacerlo hoy tú solo | Necesita el OK de otra persona |
|---|---|
| Publicar la landing, montar el formulario, conectar la hoja, mandarte la prueba a ti mismo | El dominio o subdominio · los datos fiscales · el texto que promete algo (plazos, garantías) · dar de alta una herramienta que cuesta dinero |

Y **escribe el mensaje para pedirlo**, no lo dejes en "habla con tu jefe":

> "Hola {nombre}: he montado la página de captación. Para publicarla en
> `recurso.{dominio}` necesito que alguien añada un registro CNAME en el DNS — no toca la
> web actual. Y confirmarme la razón social y el NIF para los textos legales. ¿Lo ves?"

---

## 🔍 Test de la mentira

Tres comprobaciones, ejecutables, delante del usuario:

1. **Manda un lead de prueba desde fuera.** Otro dispositivo —el móvil con datos, no con tu
   wifi—, ventana de incógnito, y un correo distinto al que usaste para montarlo. Luego
   comprueba las **tres** cosas: que la fila está en la hoja, que el correo ha llegado, y que
   las dos cosas corresponden a **ese** envío y no a una prueba anterior. Si falta una, el
   circuito está roto aunque las otras dos funcionen.
   > **Antes de asustarte con las horas:** la hoja puede guardar la marca de tiempo en UTC,
   > que en España son una o dos horas menos que tu reloj. Un desfase redondo de 60 o 120
   > minutos no es un fallo del circuito: es la zona horaria. Compara el orden de los envíos,
   > no la cifra exacta.
2. **Abre la landing publicada en el móvil.** No en la vista de móvil del ordenador: en el
   móvil. Que cargue en menos de tres segundos, que el formulario se vea entero sin hacer
   zoom, y que el botón se pueda pulsar con el pulgar y sin puntería.
3. **Mira el código fuente de la página publicada** (`Ctrl+U` en Windows, `Cmd+Opt+U` en
   Mac) y busca tu frase principal y tu forma de contacto. Si no están ahí, en texto plano,
   no las ve ni un rastreador de IA ni un lector de pantalla. Y ese es el puente con la
   última parte de esta skill.

**Lo que este test NO comprueba** —dilo, porque importa—:

- **Que el correo no acabe en spam para otras personas.** Te lo has mandado a ti mismo, y tu
  propio correo casi nunca va a spam. Es la comprobación menos representativa de todas.
- **Que la landing convierta.** Esto verifica fontanería, no persuasión. Lo de convertir lo
  dice el tráfico, y el tráfico todavía no ha llegado.
- **Que tus textos legales sean suficientes para tu caso.** Aquí hay un mínimo operativo, no
  asesoramiento jurídico.
- **Que la herramienta siga siendo gratis el mes que viene.** Ninguna te lo ha prometido.
- **Que aguante volumen.** Con el plan gratuito de automatización, el lead 101 del mes se
  queda sin correo de bienvenida. Puede que te llegue un aviso; no cuentes con verlo.

> Si solo hay tiempo para una, que sea la primera. Y hazla desde el móvil.

### Para qué NO sirve este montaje

Dilo tú antes de que se lo encuentre él. Este circuito es para **arrancar**, y hay un día en
que se queda corto:

- **Datos sensibles o regulados.** Salud, menores, datos financieros, currículums. Aquí hace
  falta más que un mínimo operativo: no lo montes con esto.
- **Más de una persona trabajando los leads.** No hay usuarios, ni permisos, ni "esto lo
  llevo yo". Una hoja compartida aguanta poco.
- **Necesitar demostrar quién consintió qué y cuándo.** La hoja guarda el correo, no una
  prueba de consentimiento en condiciones.
- **Secuencias, segmentación o puntuación de leads.** Un correo suelto no es nurturing.
- **Entregabilidad seria.** Mandar desde tu Gmail personal funciona para diez correos, no
  para una lista: eso pide dominio propio y su configuración de correo.
- **Volumen.** En cuanto pases del tope mensual gratuito, esto deja de ser un circuito y pasa
  a ser una fuga.

Cuando aparezca cualquiera de estas seis, toca migrar a una herramienta de verdad. Y está
bien: habrás migrado con leads dentro, que es la única forma sensata de elegirla.

---

## De dónde sale cada pieza de verdad

**Esta skill está pensada para montar un circuito real, hoy, con las cuentas del usuario.**
El modo prueba es el plan B, no el plan A. Para todo lo que sea investigar, sigue
`references/_investigar.md`. Aquí lo específico de montar el circuito:

### Vía 1 — Lo hago yo (por defecto)

Lo que puedo hacer entero sin que nadie mueva un dedo:

- **La landing completa.** HTML, textos, estructura, los datos estructurados y el borrador
  de la política de privacidad.
- **El correo de bienvenida**, escrito en la voz del perfil de marca (o del
  `manual-de-voz.md` si `/mi-voz` lo dejó).
- **Verificar hoy qué sigue siendo gratis**, con búsqueda web, antes de mandarte a ninguna
  parte. Esta comprobación no es opcional: los planes gratuitos de 2026 no son los de 2025.

Cuando termine, dile qué ha verificado y cuándo. Si una fuente no carga o la página de
precios ha cambiado, se dice — no se rellena de memoria.

> **Sobre el botón y la voz.** Si `/mi-voz` dejó un manual, léelo — pero recuerda lo que ese
> mismo manual dice en su bloque *"Dónde acaba este manual"*: **gobierna el tono, no el
> mecanismo.** Una landing necesita un botón y un formulario necesita un campo. Eso no es
> una violación de voz, y no debe bloquear el montaje.

### Vía 2 — Los clics los das tú (la que nunca falla)

Crear las cuentas, aceptar los términos, arrastrar el fichero, pulsar "conectar con Google
Sheets" y autorizar el acceso: **eso lo hace el usuario, siempre.** No es una limitación
tonta: es que registrarse en su nombre y aceptar contratos por él sería exactamente lo que no
debo hacer.

**Esta vía es la más fiable de las tres y conviene decirlo sin complejos.** Son unos quince
minutos de clics, y a cambio el circuito es suyo, con sus cuentas, y funciona cuando se cierre
esta conversación.

Cómo se pide, para que no se atasque:

> "Ahora te toca a ti, y son cuatro clics. Abre app.netlify.com/drop, **inicia sesión**,
> arrastra ahí el fichero `index.html` que te acabo de dar, y pégame la dirección que te
> salga. Te espero."

Pide **una cosa cada vez** y espera. No sueltes los quince pasos de golpe: se abandona en el
tercero.

### Vía 3 — Herramienta externa, solo si es gratis o ya la tiene

Para el correo de bienvenida hace falta una pieza más. Usa **solo** lo que tenga plan
gratuito real, o lo que el usuario ya esté pagando:

- **Un conector de automatización en plan gratuito** para enlazar el formulario con su propio
  correo. Es lo más rápido, y tiene un tope mensual bajo: perfecto para arrancar, insuficiente
  para escalar.
- **Una herramienta de email marketing con plan gratuito**, si lo que quiere es una secuencia
  y no un correo suelto. Más generosa en volumen, más pasos para montarla.

Las cifras exactas de cada plan, verificadas y fechadas, en `references/montaje.md`.

**Si ya paga un CRM** (HubSpot, Brevo de pago, GoHighLevel, Mailchimp…), úsalo y salta la
tercera vía entera. No le montes un circuito paralelo a algo que ya tiene.

### Lo que NO se hace

- **No prometas que el formulario gratuito manda correos al lead.** Los planes gratuitos que
  hay hoy te avisan **a ti**, no a quien rellena. Escribirle a él es de pago o requiere otra
  herramienta. Decir lo contrario es la clase de mentira pequeña que hace que el alumno se
  quede tirado a las nueve de la noche pensando que lo ha hecho mal.
- **No des por hecho ningún plan gratuito de memoria.** Verifica. Y si algo ha dejado de ser
  gratis, **dilo en voz alta y cambia de herramienta**, no lo escondas en una nota al pie.
- **No montes captura de datos reales sin aviso de privacidad y consentimiento.** No es un
  detalle de abogados: es la diferencia entre un activo y un problema. Si hoy no puede
  cumplirlo, se monta en modo prueba y punto.
- **No metas datos de personas en la URL** ni en parámetros. Ni para probar.
- **No copies el HTML de la landing de un competidor.** Inspirarte en la estructura es
  normal; copiar el fichero es apropiarte de trabajo ajeno y además heredas sus errores.
- **No automatices la creación de cuentas** ni rellenes formularios de registro por el
  usuario, aunque te lo pida.

---

## El requisito legal (España / UE)

Si el formulario va a recibir datos de personas reales, **estas tres cosas van en la página
desde el primer día**. No después:

1. **Casilla de consentimiento sin marcar por defecto**, separada del botón de enviar, con su
   propio texto y un enlace a la política de privacidad.
2. **Política de privacidad accesible desde la propia landing**: quién eres con datos de
   contacto reales, qué recoges, para qué, con qué base legal, cuánto tiempo lo guardas, con
   quién lo compartes (el formulario, la hoja y tu herramienta de correo son terceros que
   tratan esos datos) y cómo se ejercen los derechos.
3. **Una frase honesta bajo el formulario**, y que además haga de "primera capa": quién
   recoge el dato (tu nombre o razón social), para qué exactamente, cómo se ejercen los
   derechos y el enlace a la política. Si vas a mandar promociones además del recurso, dilo
   ahí. Si no lo dices, no puedes mandarlas.

Los textos modelo, listos para pegar y para rellenar, están en `references/legal-minimo.md`.

> **Sin esas tres cosas: modo prueba.** El formulario lo rellena solo el usuario, con su
> propio correo, y la landing no se difunde a nadie. Se puede aprender el circuito entero
> así, y es infinitamente mejor que aprenderlo recogiendo correos de gente que no ha
> consentido nada.

Esto es el mínimo para no montar algo obviamente ilegal, **no asesoramiento jurídico**. Si va
a captar en serio, que se lo mire alguien que cobre por mirarlo.

---

## Coda — La landing que también le habla a los agentes

Los últimos minutos, y la parte que casi nadie está enseñando todavía.

Cada vez más gente pregunta a una IA antes de comprar: compara, filtra y llega con la decisión
medio tomada. Eso significa que tu página, cada vez más, la va a leer **un programa antes que
una persona**. Y un programa no se emociona con tu vídeo de cabecera: busca datos.

Lo que **sí** funciona hoy, por orden de importancia:

1. **Que tu texto esté en el HTML, no pintado por JavaScript.** Un rastreador de IA no se
   comporta como tu navegador: lo que solo aparece **después** de que corra un script es, en
   el mejor de los casos, poco fiable para él. Ponerlo directamente en el HTML es la opción
   robusta —para las máquinas, para los lectores de pantalla y para quien tenga mala
   conexión—. Tu landing de un solo fichero ya cumple esto por defecto, y ahora sabes que no
   era un detalle de vagos.
   > Y ojo con los nombres, que se mezclan todo el rato: los que te pueden **citar** en una
   > respuesta son los rastreadores de búsqueda (`OAI-SearchBot`, `Claude-SearchBot`,
   > `PerplexityBot`). `GPTBot` y `ClaudeBot` son sobre todo de **entrenamiento**. No es lo
   > mismo y se deciden por separado (punto 4).
2. **Datos estructurados en JSON-LD** (schema.org): quién eres, qué vendes, a qué precio, en
   qué zona, y las preguntas frecuentes con su respuesta al lado. Es la forma estándar de
   decirle a una máquina "esto es un precio y esto es un horario" sin que lo tenga que deducir.
3. **Políticas legibles en texto.** Precio, plazo, zona de servicio, devoluciones y cómo
   contactar. Si un agente tiene que adivinar tu precio, no adivina: pasa al siguiente.
4. **Un `robots.txt` que no te deje fuera de la conversación.** Bloquear a los rastreadores de
   búsqueda te borra de las respuestas; bloquear a los de entrenamiento es una decisión
   distinta y perfectamente legítima. Son dos botones diferentes y se deciden por separado.

Las plantillas de JSON-LD y de `robots.txt`, con los nombres de rastreador actualizados y la
distinción entre los de búsqueda y los de entrenamiento, en `references/agentes.md`.

**Y lo que no se promete**, que aquí es la mitad del valor:

- **`llms.txt` no es un estándar.** Es una convención propuesta que ninguna de las grandes se
  ha comprometido públicamente a leer, y Google ha dicho que su buscador no la usa. Ponerlo
  cuesta cinco minutos y no hace daño. Venderlo como "el SEO de la IA" es humo.
- **Los protocolos de pago agéntico existen, pero no son tu batalla de este mes.** Están en
  movimiento y hoy no hay nada que un negocio pequeño gane montándose encima. Entérate; no te
  apuntes todavía.
- **Nadie puede garantizarte que un agente te recomiende.** Esto es hacerte legible, no
  comprar una posición. Quien te venda lo segundo te está vendiendo humo con vocabulario
  nuevo.

---

## Modo prueba (plan B)

Si no tiene negocio, o quiere ver el circuito antes de montarlo en serio, usa
`ejemplos/ofertas-de-practicas.md` (viene dentro de esta skill): una oferta concreta y un
correo de bienvenida para cada una de las tres marcas de prácticas del kit.

**Cuando lo uses, dilo claro:** el negocio es inventado. Lo que **no** es inventado, y esto es
lo bueno, es el circuito: la landing se publica de verdad, la hoja recibe filas de verdad y el
correo llega de verdad. El único dato ficticio es de quién es el negocio.

En este modo, el paso 1 del test de la mentira **sí se puede ejecutar entero**, y hay que
ejecutarlo. Es lo que diferencia haber montado el circuito de haberlo mirado.

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| Al abrir el fichero se ve el código, no la página | Se ha guardado como texto (`.html.txt`) o con formato enriquecido. Guárdalo otra vez en un editor de **texto plano** y comprueba que el nombre termina en `.html` |
| La página publicada sale en blanco | Casi siempre el fichero no se llama `index.html`, o se arrastró la carpeta equivocada. Renómbralo y vuelve a arrastrarlo |
| Actualizo la página y me sale otra dirección | Has vuelto a soltar el fichero en la página de "drop" y te ha creado un sitio nuevo. Entra en el proyecto que ya tenías y suéltalo **dentro** de él |
| El formulario incrustado no aparece | Bloqueador de anuncios o el script del widget no ha cargado. Por eso hay un enlace normal debajo: comprueba que ese sí funciona |
| Se puede enviar el formulario sin marcar la casilla | La casilla está creada pero no marcada como obligatoria. Actívalo en el propio campo del formulario y vuelve a probarlo intentando enviar sin marcarla |
| Al conectar Google no pasa nada, o sale un error de permisos | Dos causas: la ventana emergente está bloqueada por el navegador, o estás usando la cuenta de una empresa cuyo administrador no permite conectar aplicaciones. Prueba con tu cuenta personal de Google |
| La fila no llega a la hoja | Revisa que la conexión sigue autorizada. Estas integraciones caducan cuando cambias la contraseña de Google. Reconéctala y manda otra prueba |
| El correo de bienvenida no llega | Mira primero la carpeta de spam. Si no está ahí, comprueba el contador de tareas de tu plan gratuito: agotarlo es la causa más frecuente y es fácil que el aviso se te pase |
| Funcionaba y a las dos semanas dejó de funcionar | Muchas herramientas regalan una prueba de pago al crear la cuenta. Cuando caduca, lo que usaba funciones de pago se para. Comprueba que tu automatización solo usa lo que entra en el plan gratuito |
| Llegan leads basura | Casi siempre bots. Pide un dato más que un bot no rellena bien, o activa la protección antispam del formulario. No compres nada para esto todavía |
| Una herramienta ha dejado de tener plan gratuito | Dilo, no lo esquives. Busca la alternativa gratuita equivalente y rehaz solo esa pieza: el resto del circuito no se toca |
| El usuario pide meter tarjeta "para desbloquear algo" | Para. El circuito completo funciona sin pagar **dentro de los límites gratuitos**. Si algo pide tarjeta para lo básico, es que hay una vía gratuita que no habéis encontrado todavía |

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
