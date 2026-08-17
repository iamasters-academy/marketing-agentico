# El mapa de flujos

> El árbol dice **en qué rama cae cada persona hoy**. El mapa de flujos dice **qué le pasa
> después**: qué recibe, cuánto se espera, qué la mueve de sitio y cuándo se deja de escribir.
>
> Sin el mapa, el árbol es una foto. Con el mapa, es un sistema que funciona la semana que
> viene sin que nadie decida nada a mano.

---

## Los ocho estados

Todo el mundo en una lista está en uno de estos ocho. No más — si te salen doce, has mezclado
estado con etiqueta de CRM.

| Estado | Cómo se detecta | Qué significa de verdad |
|---|---|---|
| **1 · No abre nada** | Sin aperturas en 60-90 días | No es un lead: es un correo en una base de datos |
| **2 · Abre y no clica** | Aperturas sí, cero clics | Le interesa el tema, no le ha interesado nada de lo que le has mandado |
| **3 · Clica contenido** | Clics en enlaces informativos | Está aprendiendo. Todavía no está comprando |
| **4 · Clica precio o condiciones** | Clics en «precios», «financiación», «cuánto cuesta» | **La señal más fuerte que hay en un correo.** Está decidiendo |
| **5 · Responde** | Ha escrito de vuelta | Deja de ser email marketing y pasa a ser una conversación. **Sale del automático** |
| **6 · Pide cita y no aparece** | Agendó y no fue | La rama más caliente y la que nadie trabaja. Ya dijo sí una vez |
| **7 · Pide cita y va** | Fue a la consulta | Ya no es de marketing: es de ventas. Marketing solo apoya |
| **8 · Dice que no** | Lo dijo, o pidió la baja | Se respeta, se registra y **no se le vuelve a escribir** |

> **El estado 4 es el que casi nadie mira**, porque en el informe aparece como «un clic» igual
> que el 3. Se distinguen solo por **el nombre del enlace**, no por el número de clics. Esa es
> la idea central de esta skill y por eso el informe de clics por enlace es imprescindible.

---

## Qué se hace en cada estado

Los plazos son un punto de partida, no una ley. Ajústalos al ciclo de compra: en una consultoría
de 20.000 € se espera más que en una tienda de 40 €.

| Estado | Qué recibe | Cuándo | Qué lo mueve de estado | Cuándo se deja |
|---|---|---|---|---|
| **1 · No abre** | **Una despedida**, y baja | Una sola vez | Si abre la despedida → estado 2 | Inmediato: se le da de baja |
| **2 · Abre, no clica** | Cambio de ángulo. Otro formato, otro tema, otro asunto | 1 cada 2-3 semanas · máximo 3 intentos | Un clic → estado 3 o 4 | Tras 3 intentos sin clic → estado 1 |
| **3 · Clica contenido** | Más de lo que ya clicó, y un puente hacia la decisión | 1 cada 10-14 días | Clic en precio → estado 4 | Si deja de abrir 60 días → estado 1 |
| **4 · Clica precio** | **Correo de persona, no de marketing.** Cortito, con una pregunta y una vía directa | En 24-48 h, y solo una vez | Responde → 5 · agenda → 6 | Si no responde a dos, vuelve a 3 |
| **5 · Responde** | **Nada automático.** Lo coge una persona | Mismo día | La conversación decide | Se saca del automático mientras dure |
| **6 · Cita y no aparece** | Un correo que **no culpa**: «se te complicó, lo entiendo» + volver a agendar | 24 h y 7 días · máximo 2 | Reagenda → 7 · silencio → 3 | Tras 2 sin respuesta → 3 |
| **7 · Cita y va** | Solo lo que ventas pida. Marketing no interfiere | — | Lo decide ventas | — |
| **8 · Dice que no** | Nada. Nunca | — | — | **Definitivo.** Y se registra por qué |

---

## Las cuatro reglas del mapa

1. **Un estado, un correo.** Nadie recibe dos cosas la misma semana. Si cae en dos ramas, gana
   la de más arriba (el 4 gana al 3, el 6 gana al 4).
2. **Toda rama tiene salida.** Si un estado no tiene una regla que diga *«tras N intentos, se
   deja»*, has montado una secuencia infinita. Eso no es nurturing: es acoso con plantilla.
3. **Responder saca del automático.** Es la regla que más se incumple y la que más quema listas:
   alguien contesta y sigue recibiendo el correo 3 de 5 como si no hubiera dicho nada.
4. **Los estados 5, 7 y 8 no son de marketing.** Del 5 y el 7 se encarga una persona; el 8 se
   respeta. Meter los tres en el automático es la forma más rápida de perder la confianza que ya
   te habías ganado.

---

## Cómo se dibuja

**En el entregable HTML, interactivo.** Ocho estados clicables; al pulsar uno se ve su flujo
completo: qué recibe, cuándo, hacia dónde puede moverse y cuándo se deja. Y debajo, **la misma
información en tabla** — el diagrama para proyectarlo, la tabla para leerlo.

Reglas de construcción, las mismas del resto del kit:

- Un solo fichero, cero dependencias. Cajas con `div`, flechas con caracteres o con bordes CSS.
  **Nada de librerías de diagramas.**
- **Cada estado lleva su número de personas** al lado, sacado del árbol. Un mapa sin volúmenes
  es un dibujo bonito; con volúmenes, es una decisión.
- **Marca visualmente los estados que no son de marketing** (5, 7, 8). Que se vea de un golpe
  qué parte automatizas y qué parte no.
- **Y marca las salidas.** La flecha que sale del sistema —a la baja, a ventas, al silencio— tiene
  que verse tanto como las que entran.

---

## Lo que no se hace

- **No montes ocho estados si los datos solo distinguen tres.** Si no tienes el informe de clics
  por enlace, no puedes separar el 3 del 4 — y esos dos son la mitad del valor del mapa. Dilo en
  lugar de inventar la distinción.
- **No prometas que esto se ejecuta solo.** El mapa es la especificación; montarlo son
  automatizaciones dentro de su herramienta, y eso lo hace el usuario. Tú das el plano.
- **No pongas plazos de SaaS en un negocio de servicios.** «2 clics en precios en 14 días» no
  significa nada en una consultoría sin precios publicados. Traduce la señal antes de usarla.
