# El corpus — de dónde salen sus textos

El corpus es el montón de textos suyos que lees para sacar su voz. Es la materia prima de
toda la skill: sin corpus no hay manual, y con un corpus prestado sale el manual de otra
persona.

> ## La regla
>
> **Lo que está publicado, lo lees tú. Solo se pide lo que no es público.**

Pedirle a alguien que copie y pegue su propia página de inicio es el error que convierte
esta skill en un formulario. Y es evitable: te ha dado la URL, o está en el perfil.

---

## Paso 1 — Leer todo lo publicado (por defecto, siempre)

Sigue el protocolo de `_investigar.md`. Aplicado a esta skill:

**Con Firecrawl** (si tienes herramientas que empiecen por `firecrawl`):

1. `firecrawl_map` sobre su dominio → te dice en diez segundos **todas** las páginas que
   tiene: si hay blog, cuántos artículos, si hay casos, si hay notas. Esto es lo que
   convierte "leo su home" en "leo su sitio".
2. `firecrawl_scrape` sobre cada página con texto propio. Prioriza por este orden:
   **blog o notas > páginas de servicio > home > "sobre mí" > páginas legales** (estas
   últimas casi nunca las escribe él: son plantilla, no cuentan como pieza).
3. `firecrawl_scrape` con `formats: ["branding"]` sobre la home → te llevas los colores para
   el HTML de paso, y no hay que preguntarlos después.

**Sin Firecrawl:** búsqueda web + lectura de páginas, una a una. Funciona igual de bien para
un sitio pequeño, que es el caso normal. **No le digas al usuario que le falta nada.**

**Lo que también está publicado y casi nadie cuenta:**

| Fuente | Cómo se lee | Por qué vale |
|---|---|---|
| **Archivo público de la newsletter** | Substack, beehiiv, Mailchimp… tienen archivo web indexado. Búscalo antes de pedir nada | Es su voz larga, la mejor documentada |
| **Canal de YouTube** | Las transcripciones automáticas | Es su voz **hablada**: suele ser más suya que la escrita |
| **Medium, Dev.to, Substack propio** | Lectura directa | Piezas independientes de verdad |
| **Notas de prensa y entrevistas** | Búsqueda por su nombre + su empresa | Ojo: en una entrevista, la mitad la escribe el periodista. Solo cuentan sus respuestas literales |
| **Fichas de producto o servicio largas** | Lectura directa | Voz de venta, que es un registro distinto y útil |
| **Posts públicos de LinkedIn o X** | A veces se leen, a veces no | Inténtalo una vez. Si bloquea, se pide y punto |

**Lo que casi nunca vas a poder leer, y no es un fallo:** pies de foto de Instagram
(necesitan sesión), buena parte de LinkedIn, grupos cerrados, y cualquier newsletter cuyo
archivo no sea público.

---

## Paso 2 — Contar bien lo que has leído

Aquí es donde un manual se infla y se vuelve mentira. Tres reglas de recuento:

1. **Se cuentan piezas, no palabras.** Cuatro páginas de una web escritas la misma tarde por
   la misma cabeza son **cuatro** muestras de un mismo momento, no cuarenta. Decir "he leído
   3.500 palabras, ya te tengo calado" es falso y hay que resistirse.
2. **Lo replicado cuenta una vez.** Un pie de página o un bloque de "quiénes somos" repetido
   en cinco páginas es **una** pieza. Si cuentas cinco, esa frase se te convierte en
   muletilla y no lo es.
3. **Lo escrito por otro no cuenta.** Textos legales, plantillas del proveedor de email,
   descripciones que vinieron del fabricante. Si sospechas, pregunta.

Después, di el número en voz alta y qué se puede escribir con él. Los umbrales están en
`manual-de-voz.md`, y **el número de piezas y el rango de fechas van en la cabecera del
manual**.

---

## Paso 3 — La pregunta de tres palabras

> **"¿Alguno de estos lo escribiste con ayuda de IA?"**

Se hace siempre, en cuanto el usuario aporte material propio, y sin dramatizarla. Si dice
que sí:

- **Esa pieza sale del corpus de extracción.** No por castigo, por método: si le extraes la
  voz a un texto de ChatGPT, lo que sale es la voz de ChatGPT con su logo — y la siguiente
  extracción leería lo que salió de esta. Así es como una marca se queda atrapada sonando a
  IA sin saber cuándo empezó.
- **Pero no se tira.** Se guarda como **contraejemplo**, en el campo del manual de lo que
  **no** son. Un texto suyo y uno de máquina sobre el mismo tema es material de oro: en las
  pruebas del kit, el humano hizo 94.000 impresiones y el de máquina 1.100.

Agradécelo cuando lo confiese. Mucha gente no lo dice, y es el error que más caro sale aquí.

---

## Paso 4 — Pedir, solo lo que no es público

Cuando falte material que **no existe en abierto**, se pide **una sola vez y todo junto**.
Nada de diez turnos de "y ahora dame esto otro". Copia esta estructura:

> "Con lo publicado ya tengo {N} piezas. Me faltan los canales que no puedo leer. Si tienes
> a mano alguna de estas cosas, mándamelas **todas de golpe** y no te pido nada más:
>
> 1. **Tus 5-10 mejores pies de foto de Instagram** — abre tu perfil y copia los de las
>    publicaciones que más funcionaron. *(Para qué: es el canal donde más cambia el
>    registro. Sin esto, no puedo escribir para Instagram sin inventar.)*
> 2. **3 posts de LinkedIn, y dime cuál funcionó mejor** — LinkedIn bloquea la lectura
>    automática. *(Sin esto, el manual no tiene registro de LinkedIn.)*
> 3. **2 campañas de tu newsletter** — en Brevo: Campañas → abre una → "Ver como página
>    web"; en Mailchimp: Campaigns → View email. *(Sin esto, escribo el email con la voz de
>    tu web adaptada, y te lo marco como el punto más débil de la sesión.)*
> 4. **Una nota de voz de 2 minutos o unos WhatsApp a clientes**, sin nombres ni nada
>    privado. *(Muchísima gente escribe mejor ahí que en LinkedIn y no lo sabe.)*
>
> Con lo que tengas vale. No hace falta que estén los cuatro."

**Las cuatro reglas de esta petición**, que son las de `_investigar.md`: todo de una vez,
para qué es cada cosa, qué pasa si no lo tiene, y el camino exacto de clics.

**Y una que es de aquí:** pídele que marque **cuáles funcionaron mejor**. Al elegir sus
mejores piezas, el usuario ya está haciendo la mitad del trabajo — y eso le dice al manual
qué parte de su voz le está dando resultados.

**Antes de que pegue nada, un aviso, una sola vez:** que no pegue DMs, nombres de clientes
que no estén publicados, precios privados ni textos de terceros. Se queda en la
conversación.

---

## La exportación oficial (gratis, y solo si publica mucho)

Merece la pena únicamente cuando tiene mucho material. Si tiene quince posts, el copia-pega
es más rápido y no hay que esperar.

| Plataforma | Cómo | Cuánto tarda |
|---|---|---|
| **LinkedIn** | Ajustes y privacidad → Privacidad de los datos → "Obtén una copia de tus datos". La categoría **Shares** son tus publicaciones | Lo que tarde LinkedIn: de unos minutos a un par de días. Avisa por correo y el enlace caduca |
| **Instagram** | Centro de cuentas → Tu información y permisos → **Descargar o transferir información** | Lo que tarde Meta. Puede llegar el mismo día o bastante más |
| **X** | Configuración → Tu cuenta → Descargar un archivo de tus datos | Sin plazo garantizado |
| **Newsletter** | Si el archivo de envíos es público, ya está publicado: se lee directamente | Inmediato |

Rutas comprobadas en agosto de 2026 (`fuentes.md`). **No prometas plazos**: las plataformas
no los garantizan y cambian los menús cada temporada. Si no encuentra la opción o el archivo
no llega, que no pierda la tarde: copia y pega.

---

## Qué se dice al cerrar el corpus

Un párrafo, con estos cuatro datos. Va también al diario de investigación del HTML:

1. **Qué has leído** y cuántas palabras: *"las cuatro páginas de tu web, unas 3.500
   palabras"*.
2. **Qué no existe**: *"blog no hay, confirmado — no es que no lo encuentre"*.
3. **Qué ha bloqueado**: *"LinkedIn, como esperaba"*.
4. **Con cuántas piezas te quedas** y en qué banda cae eso.

Ese "qué no encontré" vale tanto como lo demás. Un manual que dice *"de email no tengo ni
una muestra y es uno de los dos canales donde vamos a publicar"* es honesto y accionable.
Uno que se calla el hueco parece completo y no lo está.

---

## Si no tiene nada publicado

Está resuelto en el `SKILL.md`: 200 palabras escritas de un tirón, y el manual se llama
provisional en su primera línea. Y **se avisa antes de mirar nada**, no después: que un
alumno vea la mitad de los campos en `Sin evidencia suficiente` sin haberle avisado es la
frustración número uno de esta skill.

El último recurso —solo si tampoco quiere escribir esas 200 palabras— es
`ejemplos/corpus-turnos.md`, que trae 12 piezas de un fundador inventado. Sirve para
aprender el método y **no sirve para publicar nada**. Dilo con esas palabras.
