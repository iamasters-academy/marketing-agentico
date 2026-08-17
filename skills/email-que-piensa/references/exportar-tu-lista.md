# Sacar tus datos de verdad (y pegarlos sin liarla)

Cómo conseguir el material real para montar el árbol: tu lista, tus secuencias y tu oferta.
Un rato de trabajo del usuario, y el ejercicio deja de ser una simulación.

**No hace falta traerlo todo de golpe.** Hay tres niveles, y con el primero ya se trabaja:

| Nivel | Qué trae | Qué se puede montar |
|---|---|---|
| **Mínimo** | Un solo CSV de contactos (alta, última actividad, nº de correos, nº de clics) | El árbol entero menos el matiz del *tema* del clic. Suficiente para empezar |
| **Completo** | Lo anterior + el informe de **clics por enlace** de sus campañas | Ya se puede separar "mira el precio" de "no sabe montarlo", que es donde está el valor |
| **Avanzado** | Lo anterior + la acción clave del producto y las respuestas de su bandeja | El árbol con las dos señales más fuertes que existen |

---

## Mapa de columnas por herramienta

Cada herramienta llama a lo mismo de otra forma, y **la que más importa a veces no existe**.
Esta tabla es lo que evita el atasco:

| Lo que necesito | Brevo | Mailchimp | MailerLite | ActiveCampaign | ConvertKit |
|---|---|---|---|---|---|
| **Fecha de alta** | `Fecha de creación` | `OPTIN_TIME` | `subscribed_at` | `Subscribe Date` | `Created At` |
| **Última actividad** | ❌ **no existe** | `LAST_CHANGED` (aproximada) | `updated_at` | `Last Activity` | ❌ no existe |
| **Nº de aperturas** | Solo por campaña | `Open Rate` (global) | `opens_count` | `Opens` | Solo por campaña |
| **Nº de clics** | Solo por campaña | `Click Rate` (global) | `clicks_count` | `Clicks` | Solo por campaña |
| **Clics por enlace** | Informe de campaña | Informe de campaña | Informe de campaña | Informe de campaña | Informe de campaña |
| **Etiquetas / listas** | `Listas` | `TAGS` | `groups` | `Tags` | `Tags` |

### Dónde está el export de contactos

- **Brevo:** Contactos → (arriba a la derecha) Exportar contactos → elige atributos → CSV.
- **Mailchimp:** Audience → All contacts → Export Audience.
- **MailerLite:** Subscribers → filtro → Export → CSV.
- **ActiveCampaign:** Contacts → Export → elige campos.
- **ConvertKit:** Subscribers → Export CSV.

### Dónde está el informe de clics por enlace — la pieza que da el valor

**No viene en el export de contactos. Nunca.** Va por campaña:

- **Brevo:** Campañas → abre una campaña enviada → pestaña **Estadísticas** → *Enlaces
  clicados* (y "Ver contactos" en cada enlace).
- **Mailchimp:** Campaigns → View report → **Click performance** → *Clicked link* → subscribers.
- **MailerLite:** Campaigns → informe de la campaña → **Link activity**.
- **ActiveCampaign:** Campaigns → report → **Links**.
- **ConvertKit:** Broadcasts → abre uno → **Clicks**.

Pide las **tres o cuatro últimas campañas**, no todas. Con eso ya hay señal.

### Si no existe "última actividad": cómo se reconstruye

Es el caso de Brevo y ConvertKit, y no es un problema. Se hace así:

1. Coge los informes de las últimas 4-6 campañas.
2. Por cada contacto, la última actividad es **la fecha de la campaña más reciente en la que
   abrió o hizo clic**.
3. Quien no aparece en ninguna: su última actividad es *anterior* a la campaña más antigua
   que has mirado. Eso ya basta para la rama de inactivos.

Dilo así al usuario, para que no lo viva como un fallo: *"tu herramienta no guarda ese
campo, lo reconstruyo yo desde los informes de campaña. No necesito nada más."*

**Si viene en varios archivos**, que no los cruce él a mano: que pegue cada uno por separado
diciendo qué es, y **con la columna de id en todos** (el mismo id en los dos ficheros). El
cruce lo hago yo. Si algún archivo no trae id, se trabaja con el que sí lo tiene y se dice
qué se ha perdido por el camino.

---

## Antes de nada: quita las direcciones de correo

**No hace falta ni una sola dirección real para diseñar un árbol de decisión.** Ninguna. Las
decisiones se toman sobre comportamiento, no sobre quién es cada uno.

Así que antes de pegar nada:

1. Abre el CSV en Excel, Numbers o Google Sheets.
2. **Borra la columna de correo electrónico.** Y la de teléfono, si la hay.
3. Si necesitas poder volver a identificarlos luego, sustituye la columna por un id
   (`lead-001`, `lead-002`…) y guárdate la equivalencia **en tu ordenador**, no en el chat.
4. Los nombres propios también sobran. Si vienen, quítalos.
5. **Cuidado con las columnas de texto libre** (respuestas, notas del comercial, campo
   "comentarios"): ahí es donde se cuelan nombres, empresas, teléfonos y firmas sin que nadie
   se dé cuenta. De una respuesta solo hace falta **lo que dijo**, no quién lo dijo: pega
   *"me interesa pero en septiembre"*, no el correo entero con su firma.

Dilo con estas palabras cuando se lo pidas:

> "Antes de pegarme nada: borra la columna de correos. No la necesito para nada de lo que
> vamos a hacer, y una lista de direcciones pegada en un chat es un problema que no te hace
> falta tener."

Si el usuario pega direcciones de todos modos, **no las uses, dilo, y sigue con el resto**.

---

## Las columnas que sí sirven

De todo lo que exporta una herramienta de email, esto es lo único que hace falta:

| Columna | Para qué | Si no la tienes |
|---|---|---|
| **id** | Distinguir filas | Numera tú |
| **fecha de alta** | Rama de espera | Se puede vivir sin ella |
| **fecha de última actividad** | Es la columna clave de todo el árbol | Sin esto no hay rama de "dejarlo ir". Búscala antes de rendirte: casi todas la tienen |
| **nº de correos recibidos** | Saber cuánto has insistido ya | Cuéntalo a ojo por tu secuencia |
| **nº de clics** | Distinguir mirón de interesado | Imprescindible. Si tu herramienta no mide clics, cambia de herramienta |
| **enlaces en los que hizo clic** | **La más valiosa y la que nadie mira.** El *nombre* del enlace te dice qué le preocupa | Suele estar en el informe de cada campaña, no en el export general |
| **acción clave del producto** | Separar curiosos de usuarios | Vive en tu producto o tu CRM, no en el email. Cruzarlo a mano vale la pena |
| **respuestas** | La señal más fuerte | Está en tu bandeja. Búscalas y anota **solo lo que dijeron**, sin nombres ni firmas |
| **origen** | Contexto para redactar | Prescindible |
| aperturas | Contexto, nada más | Ver aviso abajo |

**Sobre las aperturas:** tráelas si quieres, pero no se decide nada con ellas. Apple describe
su Protección de la Privacidad en Mail diciendo que *"downloads remote content in the
background by default — regardless of whether you engage"* (`fuentes.md`). Ese contenido
remoto incluye el píxel que cuenta las aperturas.

---

## Cómo se exporta

El nombre del botón cambia cada temporada y cada herramienta lo llama de una manera, así que
no te fíes de ninguna ruta de menú que te dé nadie de memoria —tampoco yo—.

**Lo que sí funciona siempre:**

1. Busca en tu herramienta la palabra **"Exportar"**, casi siempre desde la pantalla de
   contactos o de audiencia.
2. Elige **CSV**.
3. Si te deja escoger campos, marca los de la tabla de arriba.
4. Los datos de **clics por enlace** suelen estar en otro sitio: dentro del informe de cada
   campaña, en una pestaña que se llama "clics", "enlaces" o "actividad". Ese informe se
   exporta aparte y merece la pena.

**Si el usuario no encuentra el botón:** con búsqueda web activada, busca la documentación
oficial *de su herramienta concreta* y léela antes de mandarle a ningún sitio. No adivines
menús.

---

## Las otras dos cosas que hay que pedir

**Sus secuencias actuales.** Que pegue los correos que manda hoy, tal cual, con sus asuntos.
No para juzgarlos: para reescribirlos por rama. Un usuario que ya tiene secuencia tiene
medio trabajo hecho y no lo sabe.

**Su oferta real.** Qué vende, a qué precio, qué pasa después de que alguien diga que sí.
Sin esto, la rama de "pasar a ventas" no se puede escribir. Y esto **lo tiene todo el mundo**,
incluido quien no tiene lista todavía: por eso el árbol se puede diseñar aunque no haya ni
un contacto.

---

## Si todavía no tiene lista

Se hace igual. El árbol se diseña sobre la oferta real y sobre las señales que **va** a
poder medir:

- Qué acción de su producto o servicio significa "esto va en serio".
- Qué páginas suyas visita alguien que está a punto de comprar.
- Qué pregunta le hacen siempre antes de decidirse.

Y se monta el árbol para cuando lleguen los primeros veinte contactos. Es infinitamente
mejor que la alternativa habitual, que es improvisar una secuencia el día que hay prisa.

---

## Y si quiere implementarlo de verdad

El árbol es un documento; para que funcione solo, hay que montarlo en una herramienta. Los
planes gratuitos y qué permiten **están en `fuentes.md`, con enlace y fecha de
comprobación** — los recortan cada pocos meses, así que léelo de ahí y no de memoria. Resumen a día 2
de agosto de 2026: MailerLite confirma automatizaciones en su plan gratuito, Mailchimp ya no
las incluye en el gratuito, y de Brevo no he podido verificar los límites en su web.

**Y no lo vendas como si fuera un momento:** montar el árbol en una herramienta significa
crear las automatizaciones, traducir cada umbral a la condición que entienda esa
herramienta, probarlas con un contacto de prueba y comprobar que las bajas funcionan. Es
trabajo, y lo hace el usuario. **Esta skill no configura nada.**

**Regla que no se salta:** ni claves de API (la clave que conecta dos programas entre sí),
ni contraseñas, ni accesos. Esta skill diseña el árbol y escribe los correos; la
configuración la hace el usuario en su herramienta, mirando su pantalla. Si te ofrece una
clave, recházala y explícale por qué no hace falta.

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
