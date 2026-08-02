# La plantilla del manual de voz

Este es el entregable de la fase 1 y **el activo más valioso de todo el kit**: se hace una
vez y lo reutiliza el resto de skills que escriben algo.

## La regla que gobierna todo el documento

**Cada campo se rellena con hechos observables y con citas literales del corpus.**

Un campo sin cita no se rellena: se escribe `Sin evidencia suficiente` y se dice por qué.

| ❌ Esto no es un manual de voz | ✅ Esto sí |
|---|---|
| "Tono cercano y directo" | "Tuteas siempre y usas el nombre del cliente en la primera línea: «Ana, esto te va a sonar» (pieza 4)" |
| "Usa un lenguaje sencillo" | "Frases de 8 a 14 palabras. Casi nunca subordinas: pones un punto y sigues" |
| "Evita tecnicismos" | "Ni una vez en 14 piezas: «optimizar», «solución», «escalar», «sinergia»" |
| "Cierra invitando a la conversación" | "Cierras con una pregunta concreta («¿Cuánto tardáis vosotros?», pieza 7) o sin preguntar nada" |

La diferencia no es de estilo: la columna izquierda **no se puede comprobar**, y por tanto
no se puede usar para rechazar un texto después. El guardián de la fase 3 solo puede
trabajar con la columna derecha.

---

## La plantilla

```markdown
# Manual de voz · {{nombre}}
_Extraído de {{N}} piezas · {{rango de fechas}} · {{canales}}_
_Generado con /mi-voz el {{fecha}}_

## Cómo empiezas
{{Los 3-4 arranques que más repites, LITERALES, con la pieza de la que salen.}}
{{Y lo que nunca haces al empezar.}}

## Cómo suenas
{{Longitud de frase. Longitud de párrafo. Si subordinas o no. Ritmo.}}
{{Esto se mide, no se opina: cuenta palabras en una muestra.}}

## Tus muletillas
{{Palabras y giros que aparecen en 3 o más piezas. Literales, con el número de pieza.}}
{{Menos de 3 apariciones no es una muletilla: es una casualidad. No la metas.}}

## Palabras que jamás usas
{{Dos listas separadas:}}
{{— OBSERVADO: palabras que no aparecen ni una vez en el corpus y que un texto genérico
  de tu sector sí usaría.}}
{{— DECLARADO: lo que dijiste en /mi-marca que nunca dirías. Si no hay perfil de marca,
  escribe "Sin evidencia: no hay perfil de marca" y sigue.}}
{{Marca cuál es cuál.}}
{{Y escribe esta advertencia dentro del campo, porque es fácil pasarse de listo con él:
  que una palabra no aparezca en el corpus NO demuestra que esta persona no la use jamás.
  Demuestra que en estas piezas no está. Sirve para señalar ("esto chirría, compruébalo"),
  no para vetar por sí sola.}}

## Cómo cierras
{{Tus cierres reales, literales, con pieza. Y lo que nunca haces al cerrar.}}

## De qué pones ejemplos
{{Tu repertorio: clientes con nombre, tu propia experiencia, datos, casos ajenos...}}
{{De dónde sacas las cifras y si dices su origen.}}

## Qué te mojas en decir
{{Tus opiniones con coste: las frases que podrían molestar a alguien. Literales.}}
{{Si no hay ninguna en todo el corpus, DILO. Es el hallazgo más importante del manual.}}

## Cómo tratas al lector
{{Tú / usted / vosotros. Si le llamas por su nombre. Si te incluyes ("nosotros").}}

## Formato y puntuación
{{Emojis: cuáles y cuántos, o ninguno. Negritas. Viñetas. Saltos de línea. MAYÚSCULAS.}}
{{Signos que usas raro: puntos suspensivos, guiones largos, paréntesis.}}

## Registro por canal
{{Solo si el corpus tiene piezas de más de un canal. Qué cambia entre uno y otro.}}
{{Si solo hay un canal, escribe: "Sin evidencia: todo el corpus es de {{canal}}".}}

## Lo que este manual NO sabe de ti
{{Obligatorio. Qué campos han quedado flojos, con cuántas piezas se ha trabajado,
  y de qué canales NO hay ninguna muestra.}}
```

---

## El campo que casi todo el mundo se salta

**"Qué te mojas en decir".**

Es el que separa una voz de un estilo. El estilo se imita en cinco minutos; la opinión que
te puede costar algo, no.

Si al revisar el corpus no encuentras ni una sola frase que pueda molestar a alguien, **no
lo rellenes de relleno**. Escríbelo tal cual:

> "En las 14 piezas no hay ninguna afirmación con la que alguien pudiera estar en
> desacuerdo. Eso significa que tu contenido es correcto y no es tuyo. Es el problema más
> grande que he encontrado en este análisis, y no lo arregla ninguna skill."

Es una conversación incómoda y hay que tenerla igual.

---

## Cuántas piezas hacen falta

> **Estos umbrales son criterios operativos de este método, no el resultado de ningún
> estudio.** Están puestos donde están para que nadie llame "manual" a una corazonada. Si los
> mueves, muévelos a sabiendas.

| Piezas | Qué puedes escribir |
|---|---|
| **10 o más** | Un manual completo. Ya se repiten cosas suficientes veces para fiarse. |
| **6 a 9** | Un manual con avisos: marca qué campos van justos de evidencia. |
| **3 a 5** | Un borrador, y dilo en la primera línea: "esto es una hipótesis de voz". |
| **1 a 2** | No hagas un manual. Pide más material o pasa al texto de 200 palabras. |

Y en cualquier caso: **el número de piezas y su rango de fechas van en la cabecera del
documento.** Quien lo lea dentro de seis meses tiene que saber sobre qué se construyó.

---

## Dónde se guarda

**En Claude Code:** como `manual-de-voz.md`, en la misma carpeta que `perfil-marca.md`.

**En Claude.ai:** en las instrucciones del Proyecto, debajo del perfil de marca, o subido
como archivo al Proyecto. Dile al usuario que lo haga en ese momento, no "cuando pueda":
un manual de voz que se queda en el historial de un chat está perdido.

---

## Cuándo se vuelve a hacer

- Cuando acumule **10 piezas nuevas** desde la última extracción.
- Cuando cambie de canal principal.
- Cuando le digan "últimamente escribes distinto".

No hay que rehacerlo cada mes. Una voz no cambia tan rápido.
