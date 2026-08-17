---
name: email-que-piensa
description: Un agente de nurturing que decide qué hacer con cada persona de tu lista, incluido no escribirle. Lee el comportamiento real —mirando el NOMBRE de los enlaces clicados, no el número de clics— y devuelve un MAPA DE FLUJOS con los ocho estados en los que puede estar un lead: no abre, abre y no clica, clica contenido, clica precio, responde, pide cita y no aparece, pide cita y va, dice que no. Cada estado con qué recibe, cuánto se espera, qué lo mueve y CUÁNDO SE DEJA DE ESCRIBIR. Más los correos enteros listos para pegar y la baja programada con fecha. Si usas Mailchimp o HubSpot hay conector oficial; si no, te guía el export columna por columna.
---

# /email-que-piensa — El agente que decide a quién NO escribir

Casi todas las herramientas de IA para email prometen lo mismo: escribir más correos, más
rápido. Eso no es un problema que tenga nadie. Escribir correos es lo más fácil de esta
profesión.

El problema del email hoy es el contrario: mandas de más, a gente que hace meses que no te
lee, y lo pagas dos veces. Una en la persona, que se harta. Y otra en tu dominio: Google
pide a los remitentes *"Mantén las tasas de spam indicadas en Postmaster Tools por debajo
del 0,10 % y evita que lleguen al 0,30 %"* (fuente y fecha en `references/fuentes.md`). Esa
factura no la paga el que no te lee: la pagan los que sí.

Así que esta skill no decide **qué escribir**. Decide **qué hacer** con cada persona:
esperar, cambiar de ángulo, pasar a ventas o dejarlo ir. Y después escribe los correos de
las ramas que sí llevan correo.

**Disparadores:** "/email-que-piensa", "secuencia de emails", "nurturing", "qué le mando a
mis leads", "flujo de bienvenida", "automatización de email", "mi lista está fría", "no me
abren los correos", "monta mi secuencia", "reescribe mis emails", "email marketing para mi
negocio", "a quién dejo de escribir".

> **Cómo se llama esta skill.** En **Claude Code** y **Cowork**: `/email-que-piensa`.
> En **Claude.ai** no hay comandos con barra — pídelo con palabras y se activa
> sola; si no la coge, nómbrala: *"usa la skill email-que-piensa"*.


---

## Antes de empezar

1. **Arranca como manda `references/_arranque.md`.** Busca `perfil-marca.md` antes de
   saludar. Si no está, modo exprés y adelante: **no mandes a nadie a ejecutar `/mi-marca`
   primero**, está en una clase y quiere hacer *esta*.
2. **Busca el manual de voz `manual-de-voz.md`** que deja `/mi-voz`. Es opcional: si existe,
   es el que manda para escribir los correos. Si no, tira del bloque "la voz" del perfil.
   > Y recuerda lo que ese manual dice en su bloque *"Dónde acaba este manual"*: **gobierna
   > el tono, no el mecanismo.** Una pregunta de cierre en un correo uno-a-uno no es una
   > violación de voz. No dejes que el manual bloquee un correo que funciona.

2b. **Pregunta por el consentimiento heredado. Aquí, no en el minuto 40.** Es lo que hereda
   cualquiera que entre nuevo a un puesto de marketing, y lo que decide si esta sesión
   sirve para algo:
   > "¿Sabes cómo se captó esta lista y si había casilla de consentimiento comercial?"

   | Respuesta | Qué se hace |
   |---|---|
   | Sí, con casilla y consta | Adelante con todo |
   | La captó otra persona / no consta | Se diseña el árbol igual, pero la **primera acción es un correo de reconfirmación**, no una campaña. Se dice claramente |
   | Es una lista comprada o scrapeada | Se para. Ningún árbol arregla eso. Se explica por qué y se ofrece montar la captación bien con `/de-cero-a-lead` |

2c. **Pregunta quién lleva el buzón de envío.** La señal más fuerte del método —quién ha
   respondido— se cae por un problema organizativo, no de datos, y es lo normal en una PYME:
   quien hace marketing casi nunca lleva `hola@`.
   > "¿Tienes acceso al buzón desde el que salen los correos? Si lo lleva otra persona, no
   > pasa nada: montamos el árbol sin esa señal y te digo qué nos perdemos."

   Y si lo lleva otro, **escribe tú el mensaje para pedírselo**:
   > "Hola {nombre}: ¿me puedes pasar las respuestas que hayan llegado a {buzón} en las
   > últimas seis semanas? Solo necesito la frase útil de cada una, sin firmas ni datos de
   > contacto. Es para decidir a quién escribimos y a quién no."
4. **Pide los datos con el aviso de privacidad por delante**, antes de que pegue nada:
   > "Para esto necesito ver comportamiento, no personas. Cuando exportes tu lista, **borra
   > la columna de correos** antes de pegármela. No me hace falta ni una dirección para
   > diseñar el árbol."
5. **Confirma la oferta y qué significa 'ganar'** antes de gastar tiempo:
   > "¿Qué vendes exactamente, a qué precio, y qué quieres que pase al final: una compra
   > directa, una llamada, una respuesta? Porque el árbol cambia entero."

> **Quién hace el trabajo:** el árbol y los correos los hago yo. Lo que no puedo hacer es
> entrar en tu herramienta de email: no tengo acceso a tu cuenta y no lo voy a pedir. Los
> datos los exportas tú —cuánto tardes depende de tu herramienta—, y el paso a paso está en
> `references/exportar-tu-lista.md`.

---

## El método

Cinco pasos. El tercero es el que nadie hace y el que da todo el valor.

### Paso 1 — Separa señales de ruido

Abre `references/senales-y-decisiones.md` y clasifica lo que tienes.

Lo que vale, por orden: **una respuesta humana** > **haber hecho la acción clave del
producto** > **clic repetido en el mismo tema** > **clic en un enlace de "cómo se hace"**.

Lo que no vale: **la apertura**. Apple describe así su Protección de la Privacidad en Mail:
*"downloads remote content in the background by default — regardless of whether you engage"*
(`references/fuentes.md`). El píxel que cuenta las aperturas es contenido remoto: se descarga
solo, sin que nadie abra nada. **No construyas la rama principal sobre "abrió mucho"**, y
dile al usuario por qué, porque probablemente lleve años mirando esa métrica.

Y el filtro final para cada señal: **¿la mide tu herramienta de verdad?** Si no aparece en
tu export, la rama que cuelgue de ella es ficción.

### Paso 2 — Mira el nombre de los enlaces, no el número de clics

Aquí es donde sale la mayor parte de los hallazgos. Un informe dice "3 clics" de dos
personas distintas:

- Tres clics en **"planes y precios"** → está decidiendo si comprar.
- Tres clics en **"cómo se configura"** → ya quiere, y tiene miedo de no saber montarlo.

Son dos personas que necesitan cosas opuestas, y la mayoría de secuencias les manda el mismo
correo. Agrupa por **tema del enlace** antes de decidir nada.

### Paso 3 — Asigna una decisión a cada persona

Cuatro, y solo cuatro. Cada contacto cae en **una** cada semana:

| Decisión | Cuándo | Qué sale |
|---|---|---|
| **Esperar** | No hay señal suficiente: alta reciente, solo aperturas, un clic ambiguo | Nada. Cero correos |
| **Cambiar de ángulo** | Hay señal, pero dice algo distinto de lo que tú estás contando | Un correo que responde a *su* pregunta. Sin precio |
| **Pasar a ventas** | La señal ya es de compra: precio mirado varias veces, uso real, respuesta | Una pregunta de una línea + tarea para una persona |
| **Dejarlo ir** | Sin ninguna acción medible en mucho tiempo, con varios correos encima | Un correo de despedida de una línea, y fuera |

**El orden de evaluación importa**, porque una misma persona puede cumplir dos criterios. Se
aplica en este orden y se para en el primero que encaje:

1. ¿Ha pedido por escrito que le escribas más adelante? → **esperar con fecha**.
2. ¿Lleva meses sin ninguna acción? → **dejarlo ir**, aunque su último clic fuera muy jugoso.
   Un clic de hace cuatro meses no es una señal: es arqueología.
3. ¿Señal de compra reciente? → **pasar a ventas**.
4. ¿Señal reciente que apunta a otra cosa? → **cambiar de ángulo**.
5. Todo lo demás → **esperar**.

Los umbrales por defecto están en `references/senales-y-decisiones.md`, con la advertencia de
que **son un punto de partida, no una ley**. Ajústalos al ciclo de venta del usuario y dilo.

### Paso 4 — Escribe los correos de cada rama

Sigue `references/correos-por-rama.md`: estructura, tono y lo que está prohibido en cada
rama. Tres cosas que se saltan siempre y no se pueden saltar:

- **En la rama de cambiar de ángulo no se habla de dinero.** Ni descuento, ni oferta, ni
  fecha límite.
- **La rama de "pasar a ventas" genera una tarea para una persona**, no solo un correo. Ojo
  con la palabra "genera": la tarea la escribo yo **dentro del documento**, con el id de a
  quién hay que seguir. No entro en tu CRM ni en tu calendario. Copiarla a donde la mires
  cada mañana es cosa tuya, y hay que decírselo así.
- **El correo de despedida se cumple.** Si no contesta, sale. Un adiós seguido de tres
  correos más te retrata.

### Paso 4b — El mapa de flujos: qué le pasa a cada uno DESPUÉS

El árbol dice en qué rama cae cada persona **hoy**. Eso es una foto. Lo que convierte esto en un
sistema es decir **qué le pasa después**: qué recibe, cuánto se espera, qué la mueve de sitio y
**cuándo se deja de escribir**.

Sigue `references/mapa-de-flujos.md`, que trae los ocho estados con sus plazos y sus salidas:

| | Estado | Y lo que importa de cada uno |
|---|---|---|
| 1 | **No abre nada** | No es un lead. Despedida y baja |
| 2 | **Abre y no clica** | Le interesa el tema, no lo que le mandas. Cambio de ángulo, máximo 3 intentos |
| 3 | **Clica contenido** | Está aprendiendo, no comprando |
| 4 | **Clica precio o condiciones** | **La señal más fuerte que hay.** Y en el informe parece un clic igual que el 3 |
| 5 | **Responde** | Sale del automático. Lo coge una persona |
| 6 | **Pide cita y no aparece** | La rama más caliente y la que nadie trabaja: ya dijo sí una vez |
| 7 | **Pide cita y va** | Es de ventas. Marketing no interfiere |
| 8 | **Dice que no** | Se respeta, se registra, y no se le vuelve a escribir |

**El 3 y el 4 se distinguen solo por el nombre del enlace**, nunca por el número de clics. Si no
tienes el informe de clics por enlace, **no puedes separarlos** — y ahí se va la mitad del valor
del mapa. Dilo en lugar de inventar la distinción.

**Las cuatro reglas que no se negocian en el mapa:**

1. **Un estado, un correo.** Si alguien cae en dos ramas, gana la de más arriba.
2. **Toda rama tiene salida.** Un estado sin *«tras N intentos, se deja»* no es nurturing: es
   acoso con plantilla.
3. **Responder saca del automático.** Es la regla que más se incumple y la que más quema listas.
4. **Los estados 5, 7 y 8 no son de marketing.** Meterlos en el automático es la forma más rápida
   de perder la confianza que ya te habías ganado.

### Paso 5 — Escribe las reglas de silencio

Un árbol sin frenos vuelve a ser una secuencia. Deja escrito:

- **Cuántos correos como máximo** recibe una persona por semana (por defecto: uno de
  nurturing; los demás, solo si él hace algo).
- **La salida de cada rama.** Si una rama solo lleva a más correos, está rota.
- **El criterio de baja limpia**: sin ninguna acción en 90 días y 6+ correos → despedida y
  fuera. La ley, además, obliga a dejar irse a quien quiera: *"El destinatario podrá revocar
  en cualquier momento el consentimiento prestado a la recepción de comunicaciones
  comerciales"* (Ley 34/2002, art. 22.1, en `references/fuentes.md`).

---

## Lo que entregas

```markdown
# El email que piensa · {{negocio}}
_{{fecha}} · generado con /email-que-piensa_

## Lo que estoy leyendo
{{qué señales tiene esta lista, cuáles faltan, cuáles he descartado y por qué}}

## El árbol
| Grupo | Señal observada | Cuántos son | Decisión | Qué sale esta semana |

## Rama por rama

### Rama {{A}} — {{nombre en lenguaje de persona, no de CRM}}
- **Quién entra:** {{regla exacta, con el umbral}}
- **Por qué esta decisión:** {{qué dice la señal}}
- **El correo:** asunto + cuerpo completo, listo para copiar
- **La salida:** {{qué pasa si no responde, con tope de intentos}}
- **Qué mirar para saber si funciona:** {{una métrica, no cinco}}

## A quién NO escribo esta semana
| Grupo | Cuántos | Por qué | Cuándo lo vuelvo a mirar |

## Reglas de silencio
{{tope semanal, salidas, criterio de baja}}

## Lo que este árbol no sabe
{{señales que no tienes, supuestos que has hecho, qué habría que medir}}
```

### El entregable: tres pestañas

Sigue `references/_entregable.md` y `references/mapa-de-flujos.md`. El HTML lleva **tres
pestañas**:

| Pestaña | Qué es |
|---|---|
| **Mapa de flujos** | Los ocho estados, **clicables**. Al pulsar uno se ve su flujo entero: qué recibe, cuándo, hacia dónde puede moverse y cuándo se deja. Con el número de personas en cada estado y las salidas marcadas. Debajo, **la misma cosa en tabla** — el diagrama para proyectar, la tabla para leer |
| **Los correos** | Enteros, asunto y cuerpo, listos para pegar. No esbozos |
| **El árbol y las reglas** | El recuento por rama cuadrando con el total, a quién NO se escribe, las reglas de silencio y **la baja programada con fecha y en grande** |

Tres cosas que no pueden faltar:

- **La suma tiene que cuadrar con el total de la lista.** Si no cuadra, hay gente sin decisión
  asignada, y en un mapa visual eso se ve de un golpe.
- **Cada estado con su número de personas.** Un mapa sin volúmenes es un dibujo; con volúmenes,
  es una decisión.
- **La baja programada, con fecha.** Es el paso que todo el mundo se salta y el que hace que todo
  lo demás valga o no valga. Nadie va a comprobar si lo hizo.

Y el diario: qué se miró, qué señales no se pudieron usar y por qué.

### El cierre: dos columnas, siempre

| Puedes hacerlo hoy tú solo | Necesita el OK de otra persona |
|---|---|
| Montar los segmentos, programar los envíos, ejecutar la baja | El visto bueno a los correos si no firmas tú · el acceso al buzón de respuestas · aclarar cómo se captó la lista |

Y **escribe el mensaje para pedirlo**. En la prueba real, tres de las decisiones no eran del
usuario y ninguna se resolvió.

---

### Dos reglas que no se negocian

**1. La sección "a quién NO escribo esta semana" es obligatoria y va con nombres y número.**
Es el entregable, no un apéndice. Si el árbol le escribe a todo el mundo, no has hecho un
árbol: has hecho una secuencia con más pasos.

**2. Ninguna rama sin salida.** Toda rama termina en compra, en respuesta, en una persona o
en la puerta. Una rama que solo lleva a más correos es exactamente el problema que has
venido a resolver.

---

## 🔍 Test de la mentira

Tres comprobaciones, en voz alta y delante del usuario:

1. **Coge una persona concreta de la lista y recórrele el árbol a mano.** Debe caer en una
   rama, y en una sola. Si cae en dos, tus criterios se solapan. Si no cae en ninguna, te
   falta la rama del "no encaja en nada" — que casi siempre es esperar.
2. **Cuenta los correos de un mes para el contacto más activo y para el más pasivo.** Si a
   alguien le salen seis, tienes un problema de fatiga. Si a alguien le salen infinitos
   porque su rama no acaba nunca, tienes un problema peor.
3. **Abre tu herramienta de email y busca cada señal que usa el árbol.** Literalmente:
   entra, busca la columna, comprueba que tiene datos. Una señal que no existe en tus datos
   convierte esa rama en teoría.

**Lo que este test NO comprueba** —dilo, porque importa—: que las decisiones sean las
comercialmente correctas (eso lo dice el dinero, no el CSV), que los correos suenen a ti
(eso lo dice alguien que te conozca leyéndolos en voz alta), que tu lista tenga
consentimiento válido (eso es legal, y esta skill no es tu abogado), ni que los correos
lleguen a la bandeja de entrada (la entregabilidad se mide después, en tu herramienta y en
Postmaster Tools). Esto te da **un sistema de decisión coherente**, no resultados. Los
resultados no los da el documento: los dan las semanas que lleves mandándolo y contando
respuestas.

> Si solo hay tiempo para una, que sea la primera.

---

## De dónde salen los datos de verdad

**Esta skill está pensada para trabajar con tu lista y tus correos de verdad, hoy mismo.**
El dataset de prácticas es el plan B. Tres vías, en este orden:

Para todo lo que sea investigar, sigue `references/_investigar.md`. Aquí lo específico.

### Vía 1 — Lo busco yo (con búsqueda web)

Lo que **sí** puedo hacer: leer la documentación oficial de *tu* herramienta de email para
decirte dónde está su botón de exportar, qué columnas te va a dar y qué permite su plan
gratuito. Eso cambia cada temporada, así que se mira, no se recuerda.

**Y antes de mandarte a exportar nada: comprobar si hay conector o API.** Varias de estas
herramientas tienen API o servidor MCP. Si lo hay y el usuario ya lo usa, se acabó el
copia-pega para siempre. Pero **ofrécelo al final, no al principio**: hoy se hace la clase
con lo que hay, y la automatización es para la próxima vez.

Lo que **no** puedo hacer: entrar en tu cuenta. No tengo acceso a tu herramienta, a tu CRM
ni a tu bandeja, y no te voy a pedir claves para conseguirlo. Dilo claro desde el principio
para que nadie espere magia.

> **Nota verificada:** el centro de ayuda de Brevo devuelve 403 a la lectura automatizada y
> su página de precios va por JavaScript. No pierdas tres turnos intentándolo: pregunta al
> usuario qué plan tiene y sigue.

### Vía 2 — Lo pega el usuario (la más fiable)

Es la vía principal de esta skill, y conviene decirlo sin complejos: **es un rato de trabajo
suyo y a cambio el árbol es suyo de verdad**. Tres cosas, por este orden de valor:

1. **El export de su lista en CSV** (el CSV es la hoja de cálculo que exporta su herramienta:
   se abre con Excel, Numbers o Google Sheets), sin la columna de correos. **Con el CSV
   básico ya se puede empezar.** Guía completa, con el **mapa de columnas por herramienta**
   (Brevo, Mailchimp, MailerLite, ActiveCampaign, ConvertKit), en
   `references/exportar-tu-lista.md`.

   > ⚠️ **Esto es lo que hay que decir sí o sí, y antes de que empiece a exportar:**
   >
   > **El export de contactos NO trae los clics por enlace, y los clics por enlace son de
   > donde sale todo el valor de esta skill.** Van en el informe de campaña, aparte.
   > Con solo el CSV de contactos sale un árbol de tres ramas sin un solo hallazgo, y el
   > usuario se va pensando que la skill no sirve para mucho.
   >
   > Dile literalmente: *"Necesito dos cosas de tu herramienta, no una: el listado de
   > contactos y, aparte, el informe de clics por enlace de tus últimas campañas. La segunda
   > es la importante."*
   >
   > **Y "última actividad" no existe en todas las herramientas** —Brevo, por ejemplo, no la
   > tiene—. Si no está, no es un problema: se reconstruye desde los informes de campaña.
   > El cómo está en `references/exportar-tu-lista.md`.
2. **Las secuencias que manda hoy**, tal cual, con sus asuntos. Se reescriben por rama.
3. **Su oferta real**: qué vende, a qué precio, qué pasa cuando alguien dice que sí. Esto lo
   tiene todo el mundo, incluido quien aún no tiene ni un contacto — por eso **el árbol se
   puede diseñar aunque no exista lista todavía**.

### Vía 3 — Una herramienta gratuita, si va a implementarlo

El árbol es un documento hasta que alguien lo monta. Los planes gratuitos y lo que permiten
cada uno están verificados, con enlace y fecha, en `references/fuentes.md`. A 2 de agosto de
2026: **MailerLite** confirma en su web 3 automatizaciones visuales en el plan gratuito;
**Mailchimp** marca los flujos de automatización como "No incluido" en el suyo; de **Brevo**
no he podido verificar los límites en su propia web, así que no lo recomiendo.

Léelo de ahí antes de recomendar nada, y con la fecha por delante: esa tabla dice lo que
había en esas páginas ese día, no lo que hay hoy.

### Lo que NO se hace

- **No se piden ni se aceptan claves de API, contraseñas ni accesos.** Con un CSV exportado
  hay de sobra. Si el usuario te ofrece una clave, recházala y explica por qué no hace falta.
- **No se pegan direcciones de correo reales en el chat.** No aportan nada al diseño del
  árbol y crean un problema de datos personales que nadie necesita. Si las pega igualmente,
  no las uses y dilo.
- **Y ojo con las respuestas: son texto libre.** Es la señal más fuerte que hay, así que se
  piden — pero avisando de que ahí suelen colarse nombres, empresas, teléfonos y firmas.
  Pídele **solo la frase útil, ya limpia** ("me interesa pero en septiembre", "ya lo tenemos
  con otro"). Si pega una respuesta con datos identificables, úsala solo por su sentido, no
  la repitas entera en el entregable, y dile por qué.
- **No se escribe a quien no ha consentido.** *"Queda prohibido el envío de comunicaciones
  publicitarias o promocionales por correo electrónico […] que previamente no hubieran sido
  solicitadas o expresamente autorizadas"* (Ley 34/2002, art. 21). Ningún árbol arregla una
  lista comprada, y Google lo dice a su manera: *"Envía correos solo a las personas que
  acepten conscientemente recibir mensajes tuyos"*.
- **No se promete que esto envía correos.** Esta skill no manda nada, no se conecta a ninguna
  herramienta y no programa ningún flujo. Deja el árbol y los textos listos; enviar lo hace
  el usuario en su herramienta. Decirlo al principio evita la decepción del final.
- **No se inventan métricas del usuario.** Si no te ha dado tasas de respuesta, no las
  estimes. "No lo sé" es una respuesta válida y aquí es la correcta.

---

## Modo prácticas (plan B)

Si no tiene lista ni secuencias, usa los datos de ejemplo que vienen dentro de esta skill:

- `ejemplos/comportamiento-lista.md` — 30 contactos con comportamiento, de la marca de
  prácticas **Turnos**. Tiene cuatro grupos escondidos dentro.
- `ejemplos/secuencia-actual.md` — los cuatro correos que Turnos manda hoy a todo el mundo,
  para reescribirlos.

**Cuando lo uses, dilo claro:** son datos inventados. Y avisa de que en este modo el paso 3
del test de la mentira no se puede ejecutar —no hay herramienta real donde comprobar que la
señal existe—: *"con tu lista, ese paso no te lo puedes saltar"*.

---

## Si algo falla

| Síntoma | Qué hacer |
|---|---|
| Su herramienta no exporta la última actividad | Mira si la trae el informe de la última campaña. Si no aparece por ningún lado, monta el árbol con "nº de correos sin un solo clic" en vez de días, y dilo como limitación |
| Casi todo el mundo cae en la rama de esperar | Normal en listas pequeñas o poco trabajadas. No fuerces ramas para repartir gente: entrega el árbol tal cual y di qué señal habría que empezar a medir |
| Solo tiene aperturas, ningún dato de clics | El árbol se puede diseñar, pero no se puede aplicar. Dilo así de claro y que active el seguimiento de clics antes de mandar nada más |
| Los correos suenan a plantilla | Falta voz. Pide dos correos suyos de verdad y reescribe copiando su ritmo, no su vocabulario |
| Quiere una rama por cada matiz | Cinco ramas ya son muchas. Un árbol que no se puede explicar en una servilleta no lo va a mantener nadie |
| Tiene lista comprada o heredada sin consentimiento | Para. Eso no se arregla con un árbol: se arregla con una campaña de re-permiso o borrando. Ver `references/fuentes.md` |

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
