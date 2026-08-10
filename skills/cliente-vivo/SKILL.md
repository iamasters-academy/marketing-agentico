---
name: cliente-vivo
description: Construye un cliente con el que puedes hablar, hecho de reseñas y conversaciones reales, y detecta cuándo esa persona sintética te está diciendo lo que quieres oír.
---

# /cliente-vivo — Un cliente hecho de pruebas, no de imaginación

El buyer persona de toda la vida —la ficha con foto de banco de imágenes y "Marta, 34 años,
urbanita, valora su tiempo"— lo escribió alguien en una sala de reuniones. Con buena
intención, pero de memoria. Y luego se decide el copy, el precio y la campaña sobre eso.

Esto hace otra cosa. Construye una persona **hecha de frases que alguien dijo de verdad**
—reseñas, comentarios, transcripciones de llamadas, correos de clientes— y te deja hablar
con ella. Cada cosa que diga viene con la cita que la sostiene, o con un aviso de que se lo
está inventando.

Y trae vacuna. Porque el defecto de fábrica de estos modelos es **darte la razón**, y una
persona sintética complaciente es peor que no tener ninguna: te confirma lo que ya creías y
encima te deja tranquilo.

**Disparadores:** "/cliente-vivo", "buyer persona", "perfil de cliente ideal", "quiero
hablar con mi cliente", "entrevista a mi cliente", "qué piensa mi cliente de esto", "monta
mi ICP", "analiza las reseñas de mis clientes", "tengo transcripciones de llamadas", "por
qué no me compran".

> **Cómo se llama esta skill.** En **Claude Code** y **Cowork**: `/cliente-vivo`.
> En **Claude.ai** no hay comandos con barra — pídelo con palabras y se activa
> sola; si no la coge, nómbrala: *"usa la skill cliente-vivo"*.


---

## Antes de empezar

1. **Busca el perfil de marca.** En Claude Code, el fichero `perfil-marca.md` (lo genera la
   skill `/mi-marca`). En Claude.ai, las instrucciones del proyecto.
2. **Si no hay perfil, no pares: sigue con un mini-brief.** Esta skill funciona sola. Si el
   usuario ya tiene `/mi-marca` instalada, recomiéndasela porque el resultado sale mejor,
   pero no la conviertas en un peaje. Pregunta estas cinco cosas y continúa:

   > "No veo un perfil de marca. Podemos seguir igual: contéstame cinco cosas en una línea
   > cada una y las uso como perfil de trabajo. **1)** Qué vendes. **2)** A quién.
   > **3)** Qué problema le resuelves. **4)** Rango de precio. **5)** Por dónde te llega la
   > gente. (Si quieres un perfil en condiciones para el resto de skills del kit, ejecuta
   > `/mi-marca` cuando termines: se guarda y ya no te lo vuelvo a preguntar.)"

3. **Pregunta qué material tiene.** Esta es la pregunta que decide toda la sesión:

   > "Para construir esto necesito frases reales de tus clientes. ¿Qué tienes a mano?
   > Reseñas públicas, transcripciones de llamadas de venta, correos, respuestas de una
   > encuesta, notas del CRM… lo que sea. Si no tienes nada todavía, también podemos
   > trabajar, pero prefiero empezar por lo tuyo."

4. **Avisa de la anonimización ANTES de que pegue nada.** Literal, y antes, no después:

   > ⚠️ **Si vas a pegarme conversaciones de clientes reales, quítales antes los datos
   > personales:** nombres completos, teléfonos, correos, direcciones, números de pedido o
   > de historia clínica. Con iniciales o un "Cliente A" me vale exactamente igual: lo que
   > yo necesito son las frases, no quién las dijo. Y si grabas llamadas, dilo siempre a la
   > otra persona. Si en tu empresa hay alguien que lleva protección de datos, esto se
   > consulta con esa persona, no conmigo.

   Tienes el detalle en `references/anonimizar.md`. Si el usuario pega algo con nombres y
   teléfonos, **díselo y trabaja con la versión limpia**, no sigas como si nada.

5. **Comprueba que puedes buscar en internet** si vais a tirar de fuentes públicas. Si no lo
   tienes activado, dilo antes de empezar en vez de fingir que buscas.

> **Quién hace el trabajo.** Enséñale este reparto al principio, para que nadie espere que
> lo haga todo la máquina:
>
> | Lo pones tú | Lo hago yo |
> |---|---|
> | Traer el material de dentro de tu negocio (llamadas, correos, CRM) y tener permiso para usarlo | Buscar y leer lo público que sea accesible |
> | Quitarle los datos personales **antes** de pegarlo | Ordenar, agrupar, contar y redactar el expediente |
> | Comprobar que las citas existen en tu material | Marcar qué tiene respaldo (📌) y qué no (⚠️) |
> | Decidir qué haces con el hallazgo y validarlo con clientes o con una campaña pequeña | Hacer de esa persona y sostener la voz |
>
> La parte tuya no es el trámite: es la que aporta el valor. El material interno no está en
> internet y no va a estar nunca.

---

## El método

Cuatro pasos. El cuarto no es opcional, aunque tengas prisa.

### Paso 1 — Reunir el material

Junta frases textuales de tres sitios distintos, si es posible:

| Fuente | Qué te da | Sesgo que trae |
|---|---|---|
| **Reseñas públicas** | Volumen y espontaneidad | Solo escribe quien está muy contento o muy enfadado |
| **Llamadas y correos** | El porqué, con matices | Solo tienes a quien llegó a hablar contigo |
| **Encuestas y CRM** | Comparabilidad | La gente contesta lo socialmente cómodo |

**La regla incómoda:** el material más valioso es el de **quien no te compró**. Los
contactos que pidieron presupuesto y desaparecieron, las bajas, los "me lo tengo que
pensar". Casi nadie lo guarda, y es donde está la información que cambia decisiones. Si el
usuario no tiene nada de eso, dilo como limitación del expediente, no lo rellenes.

**Guarda todo con la fuente localizable:** dónde se dijo, quién (o "Cliente A"), y cuándo.
Sin eso, el paso de verificación no se puede hacer.

### Paso 2 — El expediente

Aquí no se resume: se **cita**. Cada rasgo del expediente lleva pegada la frase que lo
sostiene y en cuántas **piezas** aparece.

> **Qué cuenta como una pieza:** una reseña, una conversación (llamada o hilo de correo),
> una respuesta abierta de encuesta o una ficha del CRM. Una llamada de media hora es **una**
> pieza, no veinte. Y solo se suman piezas cuando dicen **el mismo freno explícito**, no
> cuando a ti te parecen parecidas: si hay que interpretar para agruparlas, no se agrupan.

Campos obligatorios:

- **Quién es** — una frase, no un párrafo de novela.
- **Lo que quiere resolver** — no el producto: el problema. Con cita.
- **Lo que le frena** — dos o tres frenos, cada uno con su cita y su recuento.
- **El disparador** — qué pasó el día que decidió moverse. Suele ser un hecho concreto, no
  una reflexión.
- **Sus palabras** — vocabulario literal que usa. Esto es oro para el copy: escribe con sus
  palabras, no con las tuyas.
- **Lo que no sabemos** — los huecos del expediente. **Campo obligatorio.** Si el material
  no dice nada sobre precio, o sobre competencia, o sobre postventa, se escribe aquí.

> **Separa lo que dice de lo que hace.** "Es caro" es lo que la gente declara, y muchas veces
> no es todo lo que pasó. Busca en el material la diferencia entre el motivo declarado y lo
> que la persona describe que le ocurrió: ahí suele estar el hallazgo.
>
> **Y preséntalo como lo que es: una hipótesis.** Que en este material el "es caro" tape otra
> cosa no demuestra que pase siempre ni en todos los negocios. Lo correcto es decir "el
> material es compatible con que el freno sea X", y que el usuario lo contraste con más
> conversaciones o con una campaña pequeña antes de mover el precio.

### Paso 3 — Darle voz (la regla del pie de fuente)

Cuando el expediente esté cerrado, el usuario puede hablar con esa persona. Al responder,
**haces de ella**, con su vocabulario y su tono. Pero cada respuesta termina con un pie:

```
📌 Fuente: "cita textual" — dónde, fecha
⚠️ Sin respaldo: no hay nada en el material que sostenga esto.
```

Uno de los dos, siempre, en todas las respuestas. Sin excepciones y sin pedirlo.

**Esto es lo que convierte el juguete en herramienta.** Sin el pie de fuente, no puedes
distinguir lo que sale del material de lo que sale del modelo. Con él, lo ves de un vistazo.

Y cuando toque poner ⚠️, se pone. Decir "no lo sé" es la respuesta más útil que puede dar
una persona sintética.

### Paso 4 — La vacuna (obligatoria)

Los modelos de lenguaje tienen una tendencia medida a colapsar hacia un personaje amable y
promedio, **aunque les pidas explícitamente que sean diversos**. Es un problema documentado,
no una opinión: tienes las referencias y las tres contramedidas en
`references/vacuna-antisesgo.md`, y hay que aplicarlas siempre.

Resumen de las tres:

1. **Aliméntala con citas textuales, no con resúmenes.** Un resumen ya es una versión
   suavizada. Las palabras raras, los tacos y las frases mal construidas son justo lo que
   impide que la persona se vuelva genérica.
2. **Obliga al pie de fuente** (paso 3). Es la contramedida más barata y la que más
   inventos caza.
3. **Intenta siempre montar una segunda persona de perfil opuesto.** Quien se fue, quien dijo
   que no, quien compró a otro. Haz las preguntas importantes a las dos. Si las dos responden
   parecido, no tienes dos personas: tienes el mismo modelo con dos nombres, y hay que
   volver al material.
   **Si no hay material de gente que no compró, no te la inventes.** Escribe *"Contra-persona
   no construida: no hay material de bajas, presupuestos perdidos ni reseñas negativas"*,
   sigue con la principal y deja esa limitación escrita bien visible en el entregable. Es el
   hueco más importante del expediente y la primera tarea del usuario para la semana que
   viene.

**Y la cuarta, que depende del usuario:** cómo pregunta. Las preguntas que empiezan por "¿te
gustaría que…?" o "¿comprarías si…?" fabrican síes. El banco de preguntas está en
`references/entrevista-al-cliente.md`. Si el usuario hace una pregunta de esas, **contéstala
y avísale**, no le des el sí y ya está:

> "Ojo con esta pregunta: te está pidiendo una hipótesis sobre el futuro, y de eso no hay
> nada en el material. Te contesto igual, pero marcado como invento. Si la giras a *«cuéntame
> la última vez que…»*, la respuesta sí tendría pruebas detrás."

---

## Lo que entregas

```markdown
# Cliente vivo · {{negocio}}
_{{fecha}} · generado con /cliente-vivo · construido sobre {{N}} piezas de material_

## De qué está hecho esto
{{cuántas reseñas, cuántas llamadas, cuántos correos, de qué fechas}}
{{y qué falta: si no hay material de quien no compró, se dice aquí}}

## La persona

**{{Nombre}}** — {{una frase}}

- **Lo que quiere resolver:** {{...}}
  - 📌 "{{cita textual}}" — {{fuente}}, {{fecha}}
- **Lo que le frena:**
  1. {{freno}} — aparece en {{N}} piezas · 📌 "{{cita}}" — {{fuente}}, {{fecha}}
  2. {{freno}} — aparece en {{N}} piezas · 📌 "{{cita}}" — {{fuente}}, {{fecha}}
- **El disparador:** {{qué pasó el día que se movió}} · 📌 "{{cita}}"
- **Sus palabras:** {{lista de expresiones literales suyas}}
- **Lo que NO sabemos:** {{huecos del expediente}}

## La contra-persona

**{{Nombre}}** — {{quien no compró, se fue o eligió a otro}}
{{mismos campos, con sus propias citas}}

## Motivo declarado vs. mecanismo real
| Lo que dicen | Lo que el material describe | Qué cambia si es cierto |

## Cómo hablar con ellas
{{tres preguntas que sí tienen respuesta con pruebas, y dos que no}}
```

### Dos reglas que no se negocian

**1. Ningún rasgo sin cita.** Si un rasgo te parece obvio pero no tienes una frase que lo
sostenga, va a "Lo que no sabemos". Un expediente con cuatro rasgos probados vale más que
uno con doce inventados, y hay que decirlo en voz alta:

> "He podido sostener tres frenos con citas. El cuarto lo intuyo, pero solo lo dice una
> persona: te lo dejo como hipótesis, no como hallazgo."

**2. Intentar la contra-persona no es opcional.** Una sola persona sintética tiende a
convertirse, en pocos mensajes, en el cliente que tú querías tener. Dos ancladas en
materiales distintos hacen ese deslizamiento mucho más difícil de ignorar: no lo impiden,
pero lo dejan a la vista. Y si no hay material contrario, se dice —no se fabrica.

---

## 🔍 Test de la mentira

Tres comprobaciones, en voz alta y delante del usuario:

1. **Abre una cita del expediente y búscala en el material.** Tiene que aparecer **literal**,
   palabra por palabra. Si está "casi igual pero mejor dicha", es que la has reescrito, y
   una cita reescrita ya no prueba nada.
2. **Haz la pregunta trampa.** Pregúntale a la persona algo que el material no cubre —una
   promoción, un canal nuevo, un precio distinto—. Si contesta con entusiasmo y sin ⚠️,
   está inventando y todo lo demás queda bajo sospecha.
3. **Haz la misma pregunta importante a la contra-persona.** Si las dos responden lo mismo
   con otras palabras, el colapso ya ha ocurrido: vuelve al material y mete citas más crudas.

**Lo que este test NO comprueba** —dilo, porque importa—: que esas frases representen a
todos tus clientes (quien escribe reseñas o coge el teléfono es una minoría autoseleccionada
y casi nunca incluye a quien se fue en silencio); que lo que la gente **dice** que hará sea
lo que hará; que el problema siga existiendo hoy; ni que exista mercado suficiente. Esto te
da un **retrato bien fundado de lo que unas personas concretas dijeron**, no la verdad sobre
tu mercado. La verdad la da vender, o preguntarle a alguien de carne y hueso.

> Si solo hay tiempo para una, que sea la segunda. Es la que detecta el fallo peligroso.

---

## De dónde sale el material de verdad

**Esta skill está pensada para trabajar con tus clientes reales.** El material de prácticas
es el plan B, no el plan A. Tres vías, en este orden:

### Vía 1 — Lo leo yo (por defecto, para lo público)

Con búsqueda web activada puedo **intentar** leer: **Google Maps** (tu ficha y la de quien se
te parezca), **Trustpilot**, **Doctoralia**, **Amazon** (páginas de producto de tu
categoría), **App Store** y **Google Play**, **G2** y **Capterra** si vendes software,
**Reddit**, foros del sector y comentarios de YouTube.

**"Intentar" es literal, no falsa modestia.** Muchas de estas plataformas bloquean el acceso
automatizado, y de una sesión a otra puede funcionar o no. Si una fuente me da error o me
devuelve la página vacía, **te lo digo y pasamos a la vía 2** (la abres tú en el navegador y
me pegas lo que veas). Lo que no voy a hacer es rellenar ese hueco de memoria.

Di siempre cuántas piezas has podido leer de cada sitio. Si de una fuente solo has sacado
seis frases, el expediente es más flojo de lo que parece y hay que decirlo.

### Vía 2 — Lo pegas tú (la que nunca falla, y aquí la principal)

Para esta skill, **la vía 2 no es el plan de emergencia: es la buena**. El material que de
verdad construye una persona útil no está en internet y no va a estar nunca:

- **Transcripciones de llamadas de venta.** Lo mejor que hay, con diferencia.
- **Correos y mensajes de clientes**, sobre todo los de antes de comprar.
- **Respuestas abiertas de encuestas** (las de escala numérica no sirven para esto).
- **Notas del CRM**, en especial el campo "motivo de la pérdida".
- **Mensajes de soporte y devoluciones.**

Pide un copia-pega directo, sin resumir:

> "Pégame las transcripciones tal cual, con las muletillas y las frases a medias. No me las
> resumas: el resumen es justo lo que rompe el ejercicio. Y quítales antes los nombres y los
> teléfonos."

Si tiene un CRM o un formulario, que exporte a CSV y pegue las columnas de texto libre.
Cualquier CRM y cualquier formulario decente exporta a CSV sin pagar nada.

### Vía 3 — Herramienta o export, solo si es gratis o ya la tiene

> **Antes de nada:** los planes gratuitos y sus límites cambian cada pocos meses. Los datos
> de abajo se comprobaron el **2 de agosto de 2026** en las páginas oficiales. Dile siempre
> al usuario que confirme el límite vigente en la web de la herramienta antes de montarse un
> plan encima. Si no puedes comprobarlo, di el límite como "el que tenían la última vez",
> no como un hecho de hoy.

- **Export CSV** del CRM, de Google Forms o de Typeform: gratis y ya lo tiene. Empieza aquí.
- **Transcripción de llamadas:** si ya graba reuniones con la herramienta de vídeo que use en
  su empresa, que exporte el texto. Si no graba nada, Otter tiene plan gratuito, pero con
  **300 minutos al mes y 30 minutos por conversación**. Y ojo con el límite que de verdad
  estorba aquí: en el plan gratuito solo se pueden **importar 3 audios o vídeos ya grabados
  en toda la vida de la cuenta**, así que sirve para transcribir llamadas nuevas, no para
  vaciar el archivo de grabaciones viejas. Y **grabar sin decirlo, nunca**.
- **App Store:** si el negocio es una app, Apple publica un feed gratuito de reseñas
  recientes por país —del orden de las **500 últimas** (unas 50 por página, hasta 10
  páginas)— sin registro ni clave. Va por tienda de cada país, y si pides muchas seguidas
  te lo capa y devuelve páginas vacías. Solo aplica a apps.

Si el usuario ya paga un servicio de extracción masiva de reseñas, que lo use. Si no lo
paga, **no se lo recomiendes**: para construir un expediente no hace falta.

### Lo que NO se hace

- **La API oficial de Google Places devuelve 5 reseñas** por ficha. Cinco. No sirve para
  esto y no prometas lo contrario.
- **La API de Trustpilot está en sus planes de empresa**, no en el gratuito. Si el usuario
  no lo tiene contratado, no existe: vía 1 o vía 2.
- **No montes un scraper.** Leer fichas públicas como lo haría una persona está bien;
  automatizar la extracción masiva va contra las condiciones de uso de esas plataformas.
- **No pegues datos personales.** Ni nombres completos, ni teléfonos, ni correos, ni datos de
  salud. Ver `references/anonimizar.md`.
- **No inventes el material que falte.** Si una fuente te bloquea o el usuario no tiene
  llamadas grabadas, **es un dato del expediente**, no un obstáculo que sortear. Se escribe
  en "Lo que no sabemos".

---

## Modo prácticas (plan B)

Si el usuario no tiene negocio, o quiere ver el ejercicio antes de hacerlo en serio, usa
`ejemplos/voz-del-cliente.md` (viene dentro de esta skill): material sintético de las tres
marcas de prácticas —reseñas, llamadas, correos, encuestas y notas de CRM— con un patrón
escondido en cada una.

**Cuando lo uses, dilo claro:** son datos inventados. En este modo el paso 1 del test de la
mentira solo se puede hacer contra ese fichero, y hay que advertirlo: *"con tus clientes de
verdad, la cita tiene que existir fuera de aquí."*

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| La persona contesta a todo y siempre suena razonable | Es el colapso. Revisa que estés poniendo el pie de fuente en todas las respuestas y mete citas más crudas, sin limpiar |
| Las dos personas (la buena y la opuesta) dicen lo mismo | No están hechas de material distinto. La contra-persona necesita sus propias citas: bajas, presupuestos no cerrados, reseñas de 1★ |
| Solo hay reseñas de 5 estrellas | Tienes la voz de tus fans, no la de tu mercado. Constrúyelo igual, y escribe bien grande en "Lo que no sabemos" que falta quien no compró |
| El usuario no tiene ningún material | Empieza por lo público (vía 1) y móntale la tarea de recoger el resto: grabar tres llamadas o mandar una pregunta abierta a diez clientes. Con diez respuestas de verdad ya hay expediente |
| El usuario pega conversaciones con nombres y teléfonos | Párale, dile qué hay que quitar y trabaja con la versión limpia. No lo dejes pasar "por esta vez" |
| El material es de hace tres años | Se puede usar, pero fechado y avisado: la gente y el mercado cambian. Ponlo en "Lo que no sabemos" |

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
