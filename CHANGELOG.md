# Changelog

Todo lo que cambia en el kit **Marketing Agéntico**, con fecha y con el motivo.
El formato sigue [Keep a Changelog](https://keepachangelog.com/es-ES/1.1.0/).

---

## [2.1.0] — 2026-08-11

Tres skills cambian de motor, no solo de texto. Y las nueve pasan a producir
entregables que se pueden explorar, no solo leer.

### Añadido

- **`/analista-lunes` ahora produce un dashboard interactivo**, no un informe con barras.
  Filtros por periodo y por cada dimensión del fichero, KPIs que se recalculan al filtrar,
  barras que filtran al pulsarlas, embudo y tabla cruzada — todo en un HTML sin dependencias,
  con los datos dentro. Y una segunda pestaña con el análisis: las tres cosas que han
  cambiado, la hipótesis de cada una y qué la tumbaría.
  Nuevo: `references/dashboard-interactivo.md`.
- **`/analista-lunes` enseña a conectar la fuente** en lugar de exportar cada semana:
  conector oficial (HubSpot, Mailchimp, Google Sheets, Analytics), volcado periódico a una
  hoja si el CRM no está en el directorio, y una rutina programada **con permiso para
  callarse cuando no hay noticia**. Nuevo: `references/conectar-datos.md`.
- **`/me-recomienda-la-ia` gana tres capas que se miden solas.** Antes todo el diagnóstico
  dependía de 24 pegadas del usuario. Ahora tres de las cuatro razones por las que no
  apareces se comprueban en tres minutos sin pedir nada: si los bots de IA pueden leer tu web
  (`robots.txt`), si existes como entidad (Wikidata, Wikipedia, nicho, Reddit, YouTube,
  LinkedIn) y si tu texto cumple los umbrales de citabilidad. Más una nota de 0 a 100 y
  **el atajo honesto**: si esas tres ya explican el cero, te ofrece saltarte el copia-pega.
  Nuevo: `references/medir-sin-preguntar.md`.
- **`/de-cero-a-lead` genera una landing por avatar.** Lee el expediente de `/cliente-vivo` y,
  si hay dos avatares con material, monta dos páginas: misma oferta, distinto titular,
  distinta prueba social y distinto botón. Y pregunta con qué CRM trabajas antes de montar el
  destino.
- **`/email-que-piensa` devuelve un mapa de ocho estados**, no solo un árbol: no abre, abre y
  no clica, clica contenido, clica precio, responde, pide cita y no aparece, pide cita y va,
  dice que no. Cada uno con qué recibe, cuánto se espera, qué lo mueve y **cuándo se deja de
  escribir**. Nuevo: `references/mapa-de-flujos.md`.
- **`instalar/zip/`**: los nueve paquetes en `.zip` para subirlos a Claude.ai. El README los
  enlazaba y la carpeta no existía.
- **`empaquetar.sh`**: regenera los `.skill` y los `.zip` desde `skills/` en un comando, para
  que no vuelvan a quedarse desfasados.

### Cambiado

- **Los tiempos del README son los reales.** `/mi-marca` no son cinco minutos: son diez o
  quince con web y veinticinco sin ella. El kit completo son seis o siete horas repartidas.
  Se añade una tabla con el tiempo de cada skill y qué tiene que aportar el usuario.
- **`/de-cero-a-lead` pide los datos legales al principio**, no al final. Era la barrera más
  tonta del kit: mucha gente no se sabe la razón social de su empresa, y descubrirlo a las
  once de la noche es abandonar.
- **`/de-cero-a-lead` avisa de qué no se puede preguntar** en un formulario de un negocio
  sanitario, jurídico o financiero. Los datos de salud son categoría especial del RGPD y un
  selector de «zona a tratar» parece inofensivo y no lo es.
- La tabla de las nueve skills del README describe lo que hacen ahora.

### Corregido

- Los paquetes `.skill` estaban desfasados respecto a `skills/`: faltaban references nuevos.
- Formato de números español en los entregables generados: `26,13 €` y `2.880 €`, no `26.13`.

### Atribución

Las capas de acceso, entidad y citabilidad de `/me-recomienda-la-ia` están adaptadas de
[geo-seo-claude](https://github.com/zubair-trabzada/geo-seo-claude) de Zubair Trabzada,
licencia MIT (Copyright © 2026 Zubair Trabzada).

---

## [2.0.0] — 2026-08-11

Reescritura de las nueve skills a partir de un simulacro completo del kit sobre un negocio
real, con 279 turnos documentados.

### Añadido

- **Arranque autónomo en las nueve.** Cada skill se puede ejecutar en un chat nuevo sin
  depender de las demás: busca `perfil-marca.md`, y si no lo encuentra hace un arranque
  exprés de tres preguntas en lugar de mandarte a otra skill.
  Nuevo en cada skill: `references/_arranque.md`.
- **Protocolo de investigación compartido.** Regla nueva: *nunca pidas al usuario algo que
  puedas averiguar tú.* Firecrawl si está, herramientas nativas si no, y preguntar solo como
  último recurso. Nuevo en cada skill: `references/_investigar.md`.
- **Entregable HTML con los colores del usuario** en las nueve, con el diario de
  investigación dentro: qué se buscó, dónde, qué salió y **qué no se encontró**.
  Nuevo en cada skill: `references/_entregable.md`.
- **Sección `## Correcciones` en el perfil de marca**, donde cada skill apunta lo que
  descubre que contradice al perfil. Arregla el fallo de arquitectura principal del kit: una
  skill medía contra competidores que otra ya había desmentido.
- **Identidad visual en el perfil**: colores, tipografía y logo, leídos de la web del usuario
  cuando se puede.

### Cambiado

- **Nombre de fichero fijado a `perfil-marca.md`** en las nueve. Antes cada una lo buscaba
  con un nombre distinto y funcionaba por suerte.
- **`/mi-marca` lee la web del usuario** antes de preguntar. La mitad de la entrevista está
  publicada.
- **`/mi-marca` diagnostica con criterio**: pregunta por señales concretas en lugar de pedir
  al usuario que elija su propio diagnóstico.
- **El manual de voz de `/mi-voz` declara dónde acaba**: gobierna el tono, no el mecanismo.
  Estaba bloqueando botones y preguntas de cierre en las skills de conversión.
- **Las nueve cierran en dos columnas**: lo que el usuario puede hacer hoy solo, y lo que
  necesita el OK de otra persona — con el mensaje redactado para pedirlo.

### Corregido

- `/mi-marca` pedía en la plantilla un campo (**Cómo me busca**) que ninguna pregunta de la
  entrevista recogía.
- `/cliente-vivo` no ofrecía su propio modo prácticas al quedarse sin material.
- `/el-hueco` avisa antes de empezar de que en B2B pequeño puede no haber reseñas, en lugar
  de descubrirlo en el minuto veinte.
- `/analista-lunes` ofrecía tres vías de datos que no coincidían con las tres que
  desarrollaba después.
- Numeración duplicada en los pasos de `/de-cero-a-lead`.

---

## [1.0.0] — 2026

Primera versión pública del kit: nueve skills de marketing con IA.
