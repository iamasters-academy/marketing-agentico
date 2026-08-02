# Señal o ruido — cómo se decide si un cambio cuenta

La mayor parte de lo que se mueve en un panel de métricas no significa nada. Este fichero es
el criterio para separar las dos cosas. **Si te saltas esto, el informe es una lista de
porcentajes, que es justo lo que ya tenía sin la skill.**

---

## Filtro 1 — Volumen: ¿hay suficientes datos para que el porcentaje signifique algo?

Cuanto más pequeño es el número, más salvaje es el porcentaje. Pasar de **2 a 4 pedidos** es
un **+100 %** y no significa absolutamente nada: puede ser una persona que compró dos veces.

Umbrales prácticos para trabajar. **Que quede claro lo que son: reglas de andar por casa, no
umbrales estadísticos.** No salen de ningún estudio; salen de que con números pequeños el
porcentaje se vuelve inútil. Úsalos como semáforo, no como ley.

| Si en el periodo hay… | Qué hacer con su porcentaje |
|---|---|
| Menos de **30 sesiones** en ese segmento | Déjalo fuera de los tres cambios. Menciónalo solo si es un canal nuevo o si vale mucho dinero |
| Menos de **10 conversiones** | No saques conclusiones de su tasa. Puedes citar el número absoluto |
| Entre 10 y 30 conversiones | Se puede mirar, pero escribe "con pocos datos" al lado |
| Más de 30 conversiones | Ahora sí, la tasa empieza a ser informativa |

**Regla que resume el filtro:** si el cambio se explica porque una sola persona hizo o dejó de
hacer algo, no es un cambio.

**Y la excepción que evita hacer el tonto:** en un negocio de poco volumen y ticket alto, dos
pedidos pueden ser el mes entero. Si el valor económico del cambio es grande, cuéntalo aunque
no pase el umbral — con los absolutos delante, la etiqueta "muestra pequeña" y sin atribuirle
una causa. El filtro está para no inventar tendencias, no para esconder dinero.

---

## Filtro 2 — Contexto: ¿es grande comparado con lo normal de esta métrica?

Una caída del 18 % solo es noticia si esa métrica no cae un 18 % todas las semanas.

**Cómo mirarlo sin estadística:** pon el mismo informe con las **últimas 6-8 semanas** y fíjate
en cuánto sube y baja de una semana a otra. Eso te da la horquilla normal. Si el cambio de
esta semana cabe dentro de esa horquilla, **no es una anomalía: es el ruido de siempre**.

Escríbelo así en el informe: *"la métrica se mueve entre -15 % y +20 % cada semana; este -18 %
está dentro de lo normal"*. Con esa frase, quien lea el informe aprende a filtrar solo.

> **Si no tienes el histórico, este filtro no se puede aplicar.** Pídelo. Y si no llega,
> escribe en el informe *"no he podido comprobar si esto es grande comparado con lo normal:
> no tengo las semanas anteriores"*. Lo que no vale es callarlo y dejar que parezca filtrado.

---

## Filtro 3 — ¿Es un día o es la semana?

Antes de escribir "ha bajado el tráfico", mira los **siete días por separado**.

- Si seis días están igual y uno está hundido → **no ha bajado el tráfico**: pasó algo un día.
  Y esa es una pregunta mucho mejor: ¿qué pasó el jueves?
- Si el pico es un día bueno (una newsletter, un post que corrió, una mención) → tampoco es
  tendencia: es un evento. Vale la pena contarlo, pero como evento.

Un solo día raro puede mover una media semanal lo suficiente como para inventarte una crisis.

> **Si solo tienes totales de la semana, este filtro tampoco se puede aplicar.** Misma regla:
> pídelo, y si no llega, escríbelo como *"no comprobado"*, nunca como *"descartado"*.

---

## Filtro 4 — El efecto mezcla: cuando la media cae y nadie ha empeorado

Este es el error de lectura más caro del marketing, y el que más gente comete delante de un
dashboard. **Una media global puede empeorar sin que ningún segmento empeore.** Basta con que
cambie el peso de cada uno.

**Ejemplo con números redondos** (inventado a propósito para que se vea la aritmética; no es
ningún negocio real):

| | Sesiones | Tasa | Pedidos |
|---|---|---|---|
| **Semana 1 · Orgánico** | 1.000 | 4 % | 40 |
| **Semana 1 · Pago** | 200 | 1 % | 2 |
| **Semana 1 · TOTAL** | **1.200** | **3,5 %** | **42** |
| **Semana 2 · Orgánico** | 1.000 | 4 % | 40 |
| **Semana 2 · Pago** | 800 | 1 % | 8 |
| **Semana 2 · TOTAL** | **1.800** | **2,7 %** | **48** |

Lee la tabla despacio:

- La tasa de conversión global se desploma: **del 3,5 % al 2,7 %**.
- **Ningún canal ha bajado su tasa.** Orgánico sigue al 4 %, pago sigue al 1 %.
- Y los pedidos **han subido**, de 42 a 48.

Lo único que ha pasado es que el canal que convierte peor ahora pesa mucho más. Si el informe
dice "la conversión ha caído un 23 %", está diciendo una verdad aritmética y una mentira de
negocio.

**Cómo se detecta:** siempre que veas caer una media, mira la misma métrica **desglosada por
segmento**. Si ningún segmento cae, no ha caído nada: ha cambiado la mezcla. Y escríbelo con
esas palabras, porque es un hallazgo en sí mismo.

> Funciona igual del revés: la media puede mejorar mientras todos tus segmentos empeoran. Si
> alguna vez te pasa y no lo detectas, celebrarás una semana malísima.

---

## Las causas aburridas — descártalas antes de la hipótesis interesante

Lista práctica, no un ranking universal: el orden cambia según el negocio. Lo que sí se
repite es que la explicación suele estar en esta lista antes que en la creatividad nueva.

### 1. La medición se ha roto
**Pistas:** la caída empieza un día concreto y es brusca; afecta a todo por igual (todos los
canales, todas las páginas); aparece un montón de tráfico "directo" o "sin asignar" de la nada.
**Causas típicas:** alguien tocó la web y se cayó la etiqueta; se lanzó un dominio o subdominio
nuevo sin medición; cambió el banner de cookies y ahora menos gente acepta; se migró de
plataforma.
**Cómo confirmarlo:** mira si el corte coincide con una fecha de publicación de la web. Y mira
el informe en tiempo real: si el sitio tiene visitas y ahí no aparece nadie, ya lo tienes.

### 2. El calendario
Festivos, puentes, vacaciones escolares, Black Friday, rebajas, el fin de una campaña. Un
festivo entre semana puede alterar mucho la comparación —más en B2B, donde casi todo el
tráfico es de horario laboral—, pero **cuánto** depende del sector, del país y del canal: no
te inventes el porcentaje, míralo en el histórico de ese negocio (qué pasó el mismo festivo
el año pasado). **Compruébalo siempre antes de buscar culpables.**

### 3. Un día suelto
Ver el filtro 3. Un envío de newsletter, un directo, una mención en un pódcast, un pico de un
bot. Un día no hace una semana.

### 4. Tráfico basura
Un *referral* (una visita que llega desde el enlace de otra web) que aparece de golpe con
cientos de sesiones y 100 % de rebote; tráfico de un país donde no vendes; bots. Sube el
volumen y hunde todas las tasas a la vez. **Indicio típico:** suben las sesiones y baja la
conversión casi en la misma proporción. Es un indicio, no un veredicto: confírmalo
desglosando por fuente, país y calidad del tráfico antes de escribirlo.

### 5. La herramienta ha cambiado
Google Analytics se actualiza sin avisarte en tu informe: modelos de atribución, definiciones
de métricas, nuevos umbrales de privacidad. Si el cambio coincide con un cambio anunciado por
la plataforma, la causa es esa.

También cuentan aquí las **dos cosas que ocultan datos y se confunden entre sí**:

- **Umbrales de datos:** Analytics oculta filas con muy pocos usuarios para que nadie pueda
  ser identificado. Los totales pueden no cuadrar con la suma de las filas. Cuando ocurre,
  aparece un aviso arriba del informe.
- **Muestreo:** en exploraciones con mucho volumen, Analytics analiza una parte de los eventos
  en lugar de todos. También avisa en pantalla.

Son cosas distintas y ninguna es un error: son decisiones de la herramienta que tienes que
mencionar cuando afecten a una cifra del informe.

---

## Glosario mínimo (para no llamar a las cosas por el nombre equivocado)

| Término | Qué es de verdad |
|---|---|
| **Usuarios activos** | Personas distintas (aproximadamente: en realidad son navegadores y dispositivos) |
| **Sesiones** | Visitas. Una persona puede tener varias en una semana |
| **Sesiones con interacción** | Las que duraron más de 10 segundos, tuvieron un evento clave o vieron 2+ páginas. Es el sustituto moderno del "rebote" |
| **Eventos clave** | Las acciones que te importan: compra, formulario, llamada. En marzo de 2024 Google los renombró: antes se llamaban "conversiones" en Analytics, y ahora "conversiones" se reserva para Google Ads |
| **Grupo de canales predeterminado** | La etiqueta que Analytics le pone a cada visita según de dónde viene (búsqueda orgánica, directo, social, referencia, email, pago…) |
| **Directo** | "No sé de dónde viene". Incluye el tráfico que llega sin referente y buena parte de lo que no se puede atribuir. Un pico de directo suele ser un problema de medición, no un éxito de marca |
| **(not set) / Sin asignar** | Analytics no pudo clasificar esa fila. Si crece mucho, mira la medición |
| **Tasa de conversión** | Conversiones dividido entre sesiones (o entre usuarios: mira cuál usa tu informe antes de compararlas, porque no son lo mismo) |

**Nunca uses una métrica que no esté en los datos que te han dado.** Si en la tabla no hay
ingresos, el informe no habla de ingresos. Ni estimados, ni "aproximadamente".
