---
name: mi-marca
description: Entrevista de 5 minutos que crea tu perfil de marca —negocio, cliente, competencia, voz y objetivo— para que el resto del kit Marketing Agéntico trabaje con TU negocio. Empieza siempre por aquí.
---

# /mi-marca — Tu perfil, una sola vez

Esta skill no hace marketing. Hace una entrevista y produce **un documento** que el resto
del kit va a leer siempre. Es el paso que ahorra repetir lo mismo ocho veces.

**Disparadores:** "/mi-marca", "configura mi marca", "empieza el kit", "quiero empezar",
"prepara mi perfil", "soy nuevo aquí", o cuando otra skill del kit necesite un perfil que
todavía no existe. También cubre a quien no tiene negocio propio: ofrece una marca de
prácticas para poder hacer los ejercicios igual.

> **Cómo se activa esta skill.** En **Claude.ai** no hay comandos con barra: pídelo con
> palabras normales y la skill se activa sola. Si ves que no la coge, nómbrala:
> *"usa la skill mi-marca"*. En **Claude Code** sí funciona `/mi-marca`.


## Antes de empezar: dilo en voz alta

Preséntate en dos frases y arranca. Algo así:

> "Te voy a hacer seis preguntas cortas sobre tu negocio. Con eso monto tu perfil, y a
> partir de ahí todas las herramientas del kit trabajan con TU marca en lugar de con
> ejemplos genéricos. Tardamos unos cinco minutos. Si alguna no la sabes, dime 'no lo sé'
> y seguimos: se puede completar después."

**Una pregunta cada vez.** No sueltes las seis de golpe: es una conversación, no un
formulario. Espera respuesta antes de pasar a la siguiente.

---

## Pregunta 0 — ¿Tienes negocio?

Antes de la entrevista, pregunta:

> "¿Vamos a trabajar sobre un negocio real —tuyo o de un cliente— o prefieres practicar
> con una marca de prácticas que te doy yo?"

- **Negocio real** → sigue con la entrevista normal.
- **Marca de prácticas** → abre `references/marca-de-practicas.md`, deja que elija una de
  las tres, y **rellena el perfil tú con esos datos**. No le hagas la entrevista: no tiene
  las respuestas y se va a frustrar. Confirma la elección y salta directo al cierre.

> Mucha gente que hace un máster todavía no tiene negocio propio. Que eso no le impida
> hacer los ejercicios. Una marca de prácticas bien elegida enseña exactamente igual.

---

## La entrevista (6 bloques)

Sigue `references/entrevista.md`, que trae el guion completo, las repreguntas cuando la
respuesta viene vaga y los ejemplos por sector.

Resumen de lo que hay que sacar:

| # | Bloque | Lo que necesitas de verdad |
|---|---|---|
| 1 | **El negocio** | Qué vende, en una frase que entendería su madre |
| 2 | **El cliente** | A quién, y sobre todo qué problema le quita de encima |
| 3 | **La competencia** | Tres nombres con su web. Si no los sabe, ayúdale a encontrarlos |
| 4 | **La voz** | Cómo habla, y qué palabras jamás usaría |
| 5 | **Dónde vive** | Web, redes, si tiene lista de correo o CRM. **Sin contraseñas ni claves, nunca** |
| 6 | **El objetivo** | Qué quiere que cambie en los próximos 90 días |

### Reglas de la entrevista

- **Si responde vago, repregunta una vez.** "Vendo consultoría de marketing" no sirve;
  "ayudo a clínicas dentales a llenar la agenda" sí. Una repregunta, no tres: no es un
  interrogatorio.
- **Si dice "no lo sé", anótalo como pendiente y sigue.** El perfil funciona incompleto.
- **Nunca pidas credenciales.** Ni claves de API, ni contraseñas, ni accesos. Si el usuario
  te las ofrece, recházalas y explícale que no hacen falta para nada de lo que vais a hacer.
- **Nada de jerga.** Ni "buyer persona", ni "propuesta de valor", ni "ICP". Pregunta como
  hablaría una persona normal.

---

## El cierre: el perfil

Cuando tengas los seis bloques:

1. **Enseña un resumen en tabla** y pregunta: *"¿Está bien así o cambio algo?"*
   No generes el documento hasta que confirme.

2. **Genera el perfil** siguiendo exactamente la plantilla de
   `references/plantilla-perfil.md`.

3. **Explícale dónde guardarlo**, según cómo esté usando Claude:

   **Si está en Claude.ai (web o app de escritorio):**
   > "Copia todo este perfil. Crea un Proyecto nuevo en Claude —menú de la izquierda,
   > 'Proyectos', 'Nuevo proyecto'— llámalo *Mi marketing* y pega el perfil en las
   > instrucciones del proyecto. A partir de ahora trabaja siempre dentro de ese proyecto:
   > todas las skills del kit verán tu marca automáticamente."

   **Si está en Claude Code:**
   > "Lo guardo como `perfil-marca.md` en tu carpeta de trabajo. Las demás skills lo van a
   > buscar ahí solas."
   >
   > Guárdalo con la herramienta de escritura en `perfil-marca.md`.

4. **Dile cuál es el siguiente paso concreto.** No lo dejes en el aire:
   > "Ya está. Prueba ahora `/el-hueco`: te va a leer las reseñas de tus competidores y
   > sacar por dónde puedes atacarles. Tarda un rato, porque va a leer bastante."

---

## 🔍 Test de la mentira

Antes de dar el perfil por bueno, haz esta comprobación delante del usuario:

**Lee en voz alta la frase del bloque 1 y pregunta: "¿Esto lo entendería alguien de tu
familia que no sepa nada de tu sector?"**

Si la respuesta es no, el perfil está escrito en jerga y todas las skills que lo lean van a
producir texto igual de vacío. Reescríbelo con él hasta que pase la prueba.

Es la comprobación más aburrida del kit y la que más resultados salva.

---

## Si el usuario ya tiene perfil

Si detectas que ya existe un perfil (porque lo ves en el proyecto o en la carpeta):

- **No repitas la entrevista.** Enséñaselo y pregunta si quiere cambiar algo.
- Para cambios sueltos ("he cambiado de público", "ahora vendo otra cosa"), edita solo ese
  bloque y avisa de qué otras skills se ven afectadas.

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
