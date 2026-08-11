---
name: mi-marca
description: Lee tu web, busca a tu competencia y te hace tres preguntas. Con eso monta tu perfil de marca —negocio, cliente, competencia, voz, colores y objetivo— para que el resto del kit Marketing Agéntico trabaje con TU negocio. Empieza siempre por aquí.
---

# /mi-marca — Tu perfil, una sola vez

Esta skill no hace marketing. Hace una entrevista **corta** y produce **un documento** que el
resto del kit va a leer siempre. Es el paso que ahorra repetir lo mismo ocho veces.

Lo que la hace corta: **si tiene web, la lees tú.** La mitad de la entrevista ya está
publicada. Solo hay que preguntar lo que no se puede leer en ninguna parte.

**Disparadores:** "/mi-marca", "configura mi marca", "empieza el kit", "quiero empezar",
"prepara mi perfil", "soy nuevo aquí", o cuando otra skill del kit necesite un perfil que
todavía no existe. También cubre a quien no tiene negocio propio: ofrece una marca de
prácticas para poder hacer los ejercicios igual.

> **Cómo se llama esta skill.** En **Claude Code** y **Cowork**: `/mi-marca`.
> En **Claude.ai** no hay comandos con barra — pídelo con palabras y se activa
> sola; si no la coge, nómbrala: *"usa la skill mi-marca"*.

---

## Antes de empezar

**¿Ya existe un perfil?** Míralo antes de saludar (`references/_arranque.md`). Si lo hay,
no repitas la entrevista: enséñaselo y pregunta qué ha cambiado.

Si no lo hay, preséntate en dos frases y arranca:

> "Voy a montar tu perfil de marca. Si tienes web, la leo yo y te ahorro la mitad de las
> preguntas: en unos diez minutos lo tenemos. A partir de ahí, todas las herramientas del
> kit trabajan con TU negocio en lugar de con ejemplos genéricos. Si algo no lo sabes, dime
> 'no lo sé' y seguimos: el perfil funciona incompleto."

**Diez minutos, no cinco.** Es lo que tarda de verdad. Prometer cinco y tardar quince es la
peor manera de empezar un kit.

---

## La entrevista

Sigue `references/entrevista.md`. Trae dos caminos:

- **Con web** → lees su web, buscas a su competencia, enseñas lo que has sacado y preguntas
  solo las tres cosas que no están publicadas en ningún sitio. Tres o cuatro turnos.
- **Sin web** → los seis bloques clásicos, uno a uno, diciendo por dónde vas
  (*"bloque 3 de 6"*).

Lo que hay que sacar, venga por donde venga:

| # | Bloque | Lo que necesitas de verdad | ¿Se puede leer? |
|---|---|---|---|
| 1 | **El negocio** | Qué vende, en una frase que entendería su madre | Sí, de su web |
| 2 | **El cliente** | A quién, qué problema le quita, y **qué escribe en Google** | A medias |
| 3 | **La competencia** | Tres nombres **abiertos y comprobados**, no propuestos a ciegas | Sí, buscando |
| 4 | **La voz** | Cómo habla, sus tics, y qué palabras jamás usaría | Sí, de sus textos |
| 5 | **Dónde vive** | Web, redes, lista, CRM, analítica, **y sus dos colores** | Casi todo |
| 6 | **El objetivo** | Qué quiere que cambie en 90 días, y qué número mirará | No |

### Reglas de la entrevista

- **Antes de preguntar, busca.** Sigue `references/_investigar.md`. Si le preguntas algo que
  está en su web, va a pensar que no la has leído — y tendrá razón.
- **Si responde vago, repregunta una vez.** "Vendo consultoría de marketing" no sirve;
  "ayudo a clínicas dentales a llenar la agenda" sí. Una repregunta, no tres.
- **Si dice "no lo sé", anótalo como pendiente y sigue.** El perfil funciona incompleto.
- **Nunca pidas credenciales.** Ni claves de API, ni contraseñas, ni accesos. Si te las
  ofrece, recházalas y explica que no hacen falta para nada de lo que vais a hacer.
- **Nada de jerga.** Ni "buyer persona", ni "propuesta de valor", ni "ICP".

---

## El diagnóstico, con criterio

Al final hay que decidir si su problema es que **no le conocen**, que **no le entienden** o
que **no le compran**. Eso orienta a las otras ocho skills, así que no se elige a ojo.

`references/entrevista.md` trae la tabla de señales. La regla: **pregunta por las señales,
no por el diagnóstico**. Nadie sabe responder *"¿tu problema es que no te entienden?"*. Todo
el mundo sabe responder *"¿la gente que te pide presupuesto acaba comprando?"*.

Si no tiene ni un número, **dilo y márcalo como hipótesis**. Un diagnóstico inventado se
propaga a las ocho skills siguientes y no hay quien lo detecte después.

---

## El cierre: el perfil

1. **Enseña un resumen en tabla** y pregunta: *"¿Está bien así o cambio algo?"* No generes
   el documento hasta que confirme.
2. **Genera el perfil** siguiendo exactamente `references/plantilla-perfil.md`.
3. **Guárdalo como `perfil-marca.md`** (Claude Code) o en las instrucciones de un Proyecto
   (Claude.ai). El nombre importa: las otras ocho lo buscan así.
4. **Genera el entregable HTML** con sus colores, siguiendo `references/_entregable.md`.
   Es el primer momento en que ve el kit funcionando de verdad. No te lo saltes.
5. **Encadena con `/mi-voz`**, que es la otra mitad de la puesta a punto:

   > "Ya tienes tu perfil. Para terminar la puesta a punto queda `/mi-voz`: saca cómo
   > escribes de verdad a partir de tus propios textos, y con eso todo lo que produzca el
   > kit sonará a ti y no a IA. Sacar el manual son unos veinte minutos; si además quieres
   > que te escriba piezas hoy, cuenta una hora. ¿Seguimos?"

---

## 🔍 Test de la mentira

Antes de dar el perfil por bueno, haz estas dos comprobaciones delante del usuario:

**1. La frase.** Lee en voz alta la frase del bloque 1 y pregunta: *"¿Esto lo entendería
alguien de tu familia que no sepa nada de tu sector?"* Si la respuesta es no, el perfil
está escrito en jerga y todas las skills que lo lean van a producir texto igual de vacío.

**2. Los competidores.** Por cada uno, pregunta: *"¿Has abierto su web?"* Si tú no la
abriste y él tampoco, ese competidor es una suposición. Márcalo como tal en el perfil.
En las pruebas del kit, **dos de tres competidores propuestos a ciegas resultaron no serlo**:
uno era un servicio de prevención de riesgos laborales y otro una agencia de marketing.

**Lo que este test NO comprueba:** que el diagnóstico sea el correcto. Eso solo lo dicen los
números, y se revisa dentro de dos meses.

---

## Si el usuario ya tiene perfil

- **No repitas la entrevista.** Enséñaselo y pregunta si quiere cambiar algo.
- Para cambios sueltos ("he cambiado de público", "ahora vendo otra cosa"), edita solo ese
  bloque y avisa de qué otras skills se ven afectadas.
- **Lee la sección `## Correcciones`**: ahí han ido dejando las otras skills lo que
  descubrieron. Si algo contradice al resto del perfil, manda la corrección y actualiza.

---

<!--
  Kit "Marketing Agéntico" · IA Masters Academy · Ángel Aparicio
  github.com/iamasters-academy/marketing-agentico
  El método se comparte, el negocio lo pone cada uno.
-->
