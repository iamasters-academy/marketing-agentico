# Comportamiento de lista (datos de ejemplo)

> ⚠️ **Todo lo que hay en este archivo está inventado.** Los 30 leads no existen, sus clics
> no han ocurrido nunca y la empresa tampoco existe. Es material sintético para practicar
> `/email-que-piensa` cuando todavía no tienes lista propia. Si tienes lista, **usa la tuya**:
> este archivo es el plan B, no el plan A.

## Para qué sirve esto

Es el export que tendrías si bajaras tu lista a CSV desde tu herramienta de email y le
quitaras la columna de direcciones. Corresponde a **"Turnos"**, una marca de prácticas
inventada: app de cuadrantes de turnos para bares pequeños, 29 €/mes, prueba gratis de 14
días, lista de unos 900 contactos. **Con eso ya tienes todo lo que hace falta para usar este
fichero**; si además tienes instalada la skill `/mi-marca` del kit, su perfil completo de
Turnos está en `marca-de-practicas.md` (marca de prácticas B).

Su problema, tal y como lo dice su propio perfil: *"la gente que se apunta a la prueba
gratis se cae casi toda en la primera semana"*.

**Dentro de estas 30 filas hay cuatro grupos de comportamiento distintos**, y ninguno está
señalado. Encontrarlos es el ejercicio. La sección "Para el formador" del final los revela:
si la lees antes de intentarlo, te has hecho trampa a ti mismo.

## Cómo usarlo

1. Ejecuta `/mi-marca`, elige "marca de prácticas" y quédate con **Turnos**.
2. Ejecuta `/email-que-piensa` y dile que use este archivo.
3. Antes de creerte el árbol que salga, pásale el 🔍 Test de la mentira del `../SKILL.md`.

---

## Qué significa cada columna

| Columna | Qué es |
|---|---|
| **id** | Identificador anónimo. Aquí no hay ni una dirección de correo, y no hace falta ninguna. |
| **origen** | De dónde vino el contacto. |
| **alta** | Hace cuánto entró en la lista. |
| **sin act.** | Días desde la última **acción medible** (clic, respuesta, entrada en la app). Un guion significa que no hay ninguna: solo aperturas. |
| **corr.** | Correos que ha recibido de Turnos. |
| **abr.** | Aperturas registradas por la herramienta. **Ojo con esta columna** (ver aviso debajo de la tabla). |
| **clics** | Clics totales en enlaces. |
| **último enlace** | El último enlace en el que hizo clic, con su nombre real. |
| **respondió** | Si contestó a algún correo, y qué dijo. |
| **configuró** | Si llegó a crear su primer cuadrante dentro de la app. Para Turnos, este es el momento en que el producto empieza a servir para algo. |

---

## Los 30 contactos

| id | origen | alta | sin act. | corr. | abr. | clics | último enlace | respondió | configuró |
|---|---|---|---|---|---|---|---|---|---|
| T-001 | Instagram | hace 34 d | — | 5 | 14 | 0 | — | no | no |
| T-002 | Google | hace 22 d | 2 d | 5 | 11 | 4 | "Planes y precios" (3 veces) | no | sí |
| T-003 | Google | hace 129 d | 96 d | 8 | 5 | 1 | "Planes y precios" (hace 96 d) | no | no |
| T-004 | Instagram | hace 18 d | 3 d | 4 | 7 | 2 | "Cómo importar tu cuadrante en 20 minutos" | no | no |
| T-005 | Google | hace 41 d | — | 6 | 18 | 0 | — | no | no |
| T-006 | Instagram | hace 3 d | 1 d | 1 | 2 | 1 | "Bienvenida — empieza por aquí" | no | no |
| T-007 | Google | hace 12 d | 2 d | 3 | 5 | 3 | "Cómo importar tu cuadrante en 20 minutos" | no | no |
| T-008 | Instagram | hace 28 d | — | 5 | 9 | 0 | — | no | no |
| T-009 | Recomendación | hace 14 d | 1 d | 4 | 8 | 3 | "Planes y precios" (2 veces) | no | sí |
| T-010 | Instagram | hace 141 d | 118 d | 7 | 3 | 0 | — | no | no |
| T-011 | Recomendación | hace 20 d | 6 d | 5 | 6 | 2 | "Vídeo: montar tu primer cuadrante" | no | no |
| T-012 | Recomendación | hace 37 d | — | 5 | 12 | 0 | — | no | no |
| T-013 | Google | hace 5 d | 2 d | 1 | 1 | 0 | — | no | no |
| T-014 | Google | hace 26 d | 4 d | 5 | 9 | 5 | "Comparar plan mensual y anual" (2 veces) | no | sí |
| T-015 | Instagram | hace 9 d | 4 d | 3 | 4 | 1 | "Vídeo: montar tu primer cuadrante" | no | no |
| T-016 | Google | hace 45 d | — | 6 | 16 | 0 | — | no | no |
| T-017 | Recomendación | hace 152 d | 136 d | 8 | 4 | 1 | "Vídeo: montar tu primer cuadrante" (hace 136 d) | no | no |
| T-018 | Recomendación | hace 2 d | 1 d | 1 | 3 | 0 | — | no | no |
| T-019 | Google | hace 15 d | 8 d | 4 | 9 | 2 | "Qué pasa si mi equipo no usa la app" | no | no |
| T-020 | Instagram | hace 31 d | — | 5 | 11 | 0 | — | no | no |
| T-021 | Instagram | hace 19 d | 3 d | 4 | 7 | 3 | "Planes y precios" (2 veces) | no | no |
| T-022 | Google | hace 118 d | 104 d | 6 | 2 | 0 | — | no | no |
| T-023 | Feria hostelería | hace 11 d | 5 d | 3 | 3 | 2 | "Cómo importar tu cuadrante en 20 minutos" | no | no |
| T-024 | Google | hace 39 d | — | 6 | 15 | 0 | — | no | no |
| T-025 | Feria hostelería | hace 6 d | 4 d | 2 | 4 | 1 | "Planes y precios" | sí — *"Me interesa, pero ahora entramos en temporada alta. Escríbeme en septiembre."* | no |
| T-026 | Feria hostelería | hace 30 d | 5 d | 6 | 12 | 4 | "Planes y precios" (2 veces) | no | sí |
| T-027 | Instagram | hace 134 d | 111 d | 7 | 6 | 0 | — | no | no |
| T-028 | Instagram | hace 16 d | 9 d | 4 | 8 | 3 | "Qué pasa si mi equipo no usa la app" | no | no |
| T-029 | Feria hostelería | hace 26 d | — | 4 | 10 | 0 | — | no | no |
| T-030 | Recomendación | hace 17 d | 2 d | 4 | 6 | 3 | "Comparar plan mensual y anual" (2 veces) | no | sí |

> ⚠️ **Aviso sobre la columna de aperturas.** Está copiada tal cual la da la herramienta, y
> por eso mismo hay que desconfiar de ella. Apple describe así su Protección de la
> Privacidad en Mail: *"downloads remote content in the background by default — regardless
> of whether you engage"* (descarga el contenido remoto en segundo plano por defecto, con
> independencia de si interactúas). Fuente y fecha de consulta en
> `../references/fuentes.md`. Traducción práctica: una parte de esas aperturas no las ha hecho
> ninguna persona. **Un número alto de aperturas con cero clics no es interés.**

---

## Recuento (para comprobar los números del árbol)

- **Contactos totales:** 30
- **Con cero clics en toda su vida:** 13 (T-001, T-005, T-008, T-010, T-012, T-013, T-016, T-018, T-020, T-022, T-024, T-027, T-029)
- **De esos 13, los que además acumulan 9 aperturas o más:** 8 (T-001, T-005, T-008, T-012, T-016, T-020, T-024, T-029) — el grupo que mejor pinta en un informe y peor se comporta
- **Que hicieron clic 2 o más veces en un enlace de precio o planes:** 6 (T-002, T-009, T-014, T-021, T-026, T-030)
- **Que empezaron la prueba, hicieron clic en algo de instalación/uso y NO configuraron su primer cuadrante:** 7 (T-004, T-007, T-011, T-015, T-019, T-023, T-028)
- **Sin ninguna acción medible desde hace más de 90 días, con 6 correos o más recibidos:** 5 (T-003, T-010, T-017, T-022, T-027)
- **Dados de alta hace menos de 7 días:** 4 (T-006, T-013, T-018, T-025)
- **Respuestas humanas en toda la lista:** 1 (T-025)

Si el árbol que te devuelve la skill mueve más gente de la que hay en cada grupo, o deja a
alguien fuera de todas las ramas, está mal. Ese es el paso 1 del test de la mentira.

---

## Para el formador

> Spoiler. No sigas si estás haciendo el ejercicio.

Los cuatro grupos, y qué decisión pide cada uno:

| Grupo | Quiénes | Qué parece | Qué es | Decisión |
|---|---|---|---|---|
| **A — Los abridores** | T-001, T-005, T-008, T-012, T-016, T-020, T-024, T-029 (8) | El grupo más "interesado" de la lista: hasta 18 aperturas | Cero clics en 4-6 correos. Buena parte de esas aperturas son automáticas | **Esperar**, con tope. No es una señal, así que no se le construye una rama encima |
| **B — Los que miran el precio** | T-002, T-009, T-014, T-021, T-026, T-030 (6) | Leads templados a los que hay que seguir nutriendo | Han vuelto al precio 2, 3 y hasta 4 veces, y 4 de los 6 ya usan el producto. Un correo más de nurturing les hace perder el tiempo | **Pasar a ventas**: una pregunta directa de una línea, y aviso a una persona |
| **C — Los atascados** | T-004, T-007, T-011, T-015, T-019, T-023, T-028 (7) | Gente fría que no compra | Están dentro de la prueba y hacen clic en "cómo importar", "cómo montarlo", "qué pasa si mi equipo no lo usa": no dudan del precio, dudan de si van a saber montarlo | **Cambiar de ángulo**: dejar de vender y ayudar a configurar |
| **D — Los que ya no están** | T-003, T-010, T-017, T-022, T-027 (5) | Lista | Entre 96 y 136 días sin una sola acción, con 6-8 correos encima | **Dejarlo ir**: un correo de una línea y fuera |
| **E — Los recién llegados** | T-006, T-013, T-018, T-025 (4) | Nada todavía | Menos de 7 días y 1-2 correos. T-025 además ha pedido por escrito que le escriban en septiembre | **Esperar**. En T-025, esperar *con fecha* |

**El hallazgo que hace que la clase valga la pena:** el grupo más grande de todos los que sí
reciben correo (C, con 7 — solo lo supera el grupo A, con 8, que precisamente no recibe nada)
no tiene un problema de precio ni de deseo. Tiene un problema de *no sé si sabré montarlo* —
exactamente el problema que el perfil de Turnos declara ("creen que es complicado cuando se
configura en veinte minutos"). La secuencia que Turnos manda hoy (`secuencia-actual.md`) les
habla de descuentos. Les está respondiendo a una pregunta que no han hecho.

**La segunda trampa, más fina:** T-017 hizo clic en "Vídeo: montar tu primer cuadrante" y no
configuró nada — igualito que el grupo C. Pero ese clic fue hace **136 días**. Si el árbol lo
manda a "cambiar de ángulo", está tratando arqueología como si fuera una señal. Sirve para
enseñar por qué el orden de evaluación importa: la inactividad manda sobre el tipo de clic.

**La trampa a propósito:** el grupo A es **el más numeroso de toda la lista (8 de 30)** y el
que mejor pinta en cualquier informe de aperturas. Si el alumno construye su rama principal
sobre "abrió mucho", ha construido sobre humo — y encima sobre el grupo más grande que hay.
Quien mande un informe diciendo que ese trozo de la lista "está muy interesado" está a un
clic de que le pregunten cuántos compraron.

**Lo que este dataset no puede enseñar:** si las decisiones funcionan. Eso no sale de un
CSV, sale de mandar los correos y contar respuestas. Dilo cuando lo uses.

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  Datos sintéticos para practicar /email-que-piensa. El método se comparte, el negocio lo pone cada uno.
-->
