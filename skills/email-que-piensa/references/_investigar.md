# Investigar — el mismo protocolo para las nueve skills

> Este fichero se copia dentro de `references/` de cada skill del kit.

---

## La regla, antes que nada

> ### Nunca le pidas al usuario algo que puedas averiguar tú.

Si te descubres escribiendo *"pégame las reseñas de tus competidores"* o *"dime quiénes son
tus competidores"* sin haber buscado antes, **estás haciéndolo mal**. Busca primero. Pide
después, y solo lo que no exista en ninguna parte.

El usuario está en una clase de una hora. Cada minuto que pasa copiando y pegando es un
minuto que no está aprendiendo nada.

---

## Los tres niveles

Compruébalos en orden. Usa el primero que tengas disponible.

### Nivel 1 — Firecrawl (si está instalado)

Mira si tienes herramientas cuyo nombre empiece por `firecrawl`. Si las tienes, úsalas:
son mejores que las nativas para esto.

| Para… | Herramienta | Cuándo |
|---|---|---|
| Leer una página concreta | `firecrawl_scrape` | Web de un competidor, una landing, un artículo |
| Sacar los **colores y el logo** de una marca | `firecrawl_scrape` con `formats: ["branding"]` | Al montar el entregable HTML |
| Buscar en la web | `firecrawl_search` | Encontrar competidores, reseñas, menciones |
| Ver **todas** las páginas de un sitio | `firecrawl_map` | Saber si un competidor tiene blog, precios, casos |
| Leer un sitio entero | `firecrawl_crawl` | Auditar a fondo a un competidor. Cuesta tiempo: avisa |
| Sacar datos con estructura fija | `firecrawl_scrape` con `jsonOptions` | Precios, planes, fichas de servicio de varios sitios a la vez |
| Investigación larga y autónoma | `firecrawl_agent` + `firecrawl_agent_status` | Preguntas amplias que requieren muchas fuentes |

**Truco que casi nadie usa:** `firecrawl_map` sobre la web de un competidor te dice en
diez segundos si tiene blog, si publica precios y cuántos casos de éxito tiene. Eso es media
auditoría competitiva sin leer una sola página entera.

### Nivel 2 — Las herramientas nativas

Sin Firecrawl, tienes búsqueda web y lectura de páginas. Funcionan bien y **no le digas al
usuario que le falta nada**: solo que la investigación será algo menos profunda.

- Búsqueda web → para encontrar competidores, reseñas, menciones, rankings del sector.
- Lectura de páginas → para leer cada web una a una.

Limitaciones que vas a encontrar y conviene conocer de antemano:
- **Trustpilot devuelve 403** casi siempre. No insistas tres veces: anótalo y sigue.
- Muchas webs cargan el contenido con JavaScript y verás la página vacía. Prueba la versión
  en caché de la búsqueda, o dilo y sigue.
- Los directorios de reseñas B2B (G2, Capterra) rara vez tienen ficha de una consultora
  pequeña española.

### Nivel 3 — Preguntar al usuario (último recurso)

Solo cuando el dato **no existe en la web**. Casos legítimos:
- Sus propios números (facturación, clientes, tickets, conversión)
- Lo que le dijeron sus clientes por teléfono o por correo
- Lo que sale al preguntar a ChatGPT o Gemini
- Datos detrás de un login (su analítica, su lista de correo, su CRM)

**Cuando toque pedir, pide bien:**

1. **Todo de una vez, no a cachos.** Una sola petición con una lista numerada. Nada de
   diez turnos de "y ahora dame esto otro".
2. **Di para qué es cada cosa.** "Necesito X para poder decirte Y."
3. **Di qué pasa si no lo tiene.** Casi siempre la skill puede seguir con menos.
4. **Da el camino exacto.** No "exporta tu lista", sino "en Brevo: Contactos → Exportar →
   marca estas cuatro columnas".
5. **Ofrece el atajo.** Si hay un conector oficial que evita el copia-pega para siempre,
   dilo — pero **después** de haber resuelto la sesión de hoy, no antes. Hoy se hace la
   clase; la automatización es para la próxima vez.

---

## Lo que se busca en cada caso

### Competidores
No preguntes quiénes son. **Búscalos.** Con el negocio y el cliente del perfil ya tienes
para montar de tres a cinco búsquedas:

- `{lo que vende} {ciudad o país}`
- `mejores {categoría} {año}` ← los rankings del sector te los dan agrupados
- `{el problema del cliente, en sus palabras}` ← salen los que compiten por la búsqueda real
- `alternativas a {el competidor más obvio}`

Después **abre cada web y comprueba que compite de verdad.** Este paso no es opcional: en
las pruebas del kit, dos de tres "competidores" resultaron ser otra cosa —un servicio de
prevención de riesgos laborales y una agencia de marketing digital— y nadie lo habría
notado sin abrir la página.

Enseña la lista y deja que el usuario quite o añada. Ahí sí aporta: conoce su mercado.

### Reseñas y quejas
Búscalas en este orden: Google Maps → foros y Reddit → LinkedIn y redes → prensa del sector
→ webs de reseñas.

**Si no encuentras nada, dilo y sigue.** En consultoría B2B pequeña es lo normal, no la
excepción: no es un fallo tuyo ni suyo. Y no vale rellenar con quejas genéricas del sector
disfrazadas de reseñas: si no hay material, la conclusión es *"no hay material"* y se
apunta como hallazgo.

Solo entonces, y como último recurso, pregunta si tiene guardado algo de sus propios
clientes perdidos.

### Colores y logo de una marca
Con Firecrawl: `firecrawl_scrape` con `formats: ["branding"]` sobre su web y ya los tienes.
Sin Firecrawl: lee la web y saca los colores del CSS o de lo que se ve.
Si no hay web: pregunta por **dos colores**, no por una guía de estilo entera.

### Datos privados (analítica, lista de correo, CRM)
No hay forma de leerlos sin acceso, y **el acceso no se pide nunca**. Lo que sí puedes:
- Comprobar si hay un conector oficial disponible y ofrecerlo.
- Si no, pedir **una sola exportación o captura**, con el camino exacto de clics.
- Nunca pedir ni aceptar contraseñas, ni claves de API, ni que te añada como usuario.

---

## El diario de investigación

Mientras investigas, **ve apuntando**. Al final va dentro del entregable HTML y es una de
las partes que más impresiona, porque enseña el trabajo que hay detrás:

| Qué se apunta | Ejemplo |
|---|---|
| Qué buscaste | "mejores consultoras de IA para pymes España 2026" |
| Dónde | Búsqueda web · 7 resultados |
| Qué encontraste | 6 competidores, 4 verificados abriendo su web |
| Qué **no** encontraste | Reseñas de 4 de los 6: cero en todas las plataformas |
| Qué descartaste y por qué | Vítaly: es un servicio de prevención de riesgos, no compite |

Ese "qué no encontraste" es tan valioso como lo demás. Un informe que dice *"busqué reseñas
en cinco sitios y no hay ninguna"* es honesto y accionable. Uno que se calla el hueco parece
completo y no lo está.

---

## Cuánto tardas, y decirlo

Investigar bien lleva tiempo. **Avisa antes de empezar**, con un número:

> "Voy a leer las webs de seis competidores y a buscar reseñas de cada uno. Son unos cinco
> minutos. Te aviso cuando lo tenga."

Y si vas a tardar de verdad —un `firecrawl_crawl`, veinte búsquedas— **ve contando lo que
encuentras según lo encuentras.** El silencio largo es lo que hace que la gente cierre el
portátil.
