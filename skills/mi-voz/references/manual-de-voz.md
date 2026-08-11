# La plantilla del manual de voz

Este es el entregable de la fase 1 y **el activo más valioso de todo el kit**: se hace una
vez y lo reutiliza el resto de skills que escriben algo.

> **Se guarda como `manual-de-voz.md`.** Nombre fijo, sin fecha y sin prefijo, en la misma
> carpeta que `perfil-marca.md`. Las skills de contenido lo buscan con ese nombre exacto: si
> lo guardas como `04-manual-y-piezas.md`, no lo encuentra nadie y el trabajo se pierde.

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

{{Si N < 6, esta línea es obligatoria y va aquí arriba:}}
> ⚠️ Esto es una hipótesis de voz, no un manual cerrado. {{N}} piezas están por debajo
> del umbral de este método (10). Los campos que van justos están marcados.

{{Si el corpus mezcla dos voces —empresa y persona—, la segunda advertencia:}}
> ⚠️ Aquí dentro hay dos voces, no una. {{N1}} piezas son {{voz A}} y {{N2}} son
> {{voz B}}. No suenan igual y no deben sonar igual. Van separadas en "Registro por canal".

## Cómo empiezas
{{Los 3-4 arranques que más repites, LITERALES, con la pieza de la que salen.}}
{{Y lo que nunca haces al empezar.}}

## Cómo suenas
{{Longitud de frase. Longitud de párrafo. Si subordinas o no. Ritmo.}}
{{Esto se mide, no se opina: cuenta palabras en una muestra.}}

## Tus muletillas
{{Palabras y giros que aparecen en 3 o más piezas. Literales, con el número de pieza.}}
{{Menos de 3 apariciones no es una muletilla: es una casualidad. No la metas.}}
{{Si el giro es una ESTRUCTURA (una antítesis, un tipo de titular, un signo), apunta la
  DENSIDAD: cuántas apariciones en cuántas palabras. "18 veces en 3.500 palabras, una
  cada ~190". El guardián necesita ese número para distinguir su firma de una imitación.}}
{{Y una sublista de las que se quedaron por debajo del umbral, para volver a mirarlas
  cuando haya más piezas. Ojo con el recuento: un pie de página replicado en cuatro
  páginas cuenta UNA vez, no cuatro. Ese es el error que infla un manual y lo vuelve
  mentira.}}

## Palabras que jamás usas
{{Dos listas separadas:}}
{{— OBSERVADO: palabras que no aparecen ni una vez en el corpus y que un texto genérico
  de tu sector sí usaría.}}
{{— DECLARADO: lo que dijiste en /mi-marca que nunca dirías. Si no hay perfil de marca,
  escribe "Sin evidencia: no hay perfil de marca" y sigue.}}
{{Marca cuál es cuál. Y si las dos listas coinciden, dilo: no es lo normal.}}
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
{{Y contra QUIÉN te mojas: contra abstracciones ("las demos", "los test") o contra
  actores con nombre. No es lo mismo y cambia lo que se puede escribir.}}
{{Si no hay ninguna en todo el corpus, DILO. Es el hallazgo más importante del manual.}}

## Cómo tratas al lector
{{Tú / usted / vosotros. Si le llamas por su nombre. Si te incluyes ("nosotros").}}
{{Si esto contradice lo que dice el perfil de marca, señálalo: manda lo publicado, y
  hay que apuntar la corrección en el perfil.}}

## Formato y puntuación
{{Emojis: cuáles y cuántos, o ninguno. Negritas. Viñetas. Saltos de línea. MAYÚSCULAS.}}
{{Signos que usas raro: puntos suspensivos, guiones largos, paréntesis.}}

## Registro por canal
{{Solo si el corpus tiene piezas de más de un canal. Qué cambia entre uno y otro.}}
{{Un bloque por canal, con cuántas piezas lo sostienen. Un canal con UNA muestra no
  fija longitud, ni frecuencia, ni cierre habitual: dilo dentro del bloque.}}
{{Si un canal de destino tiene CERO muestras, escribe "Sin evidencia suficiente" y qué
  consecuencia tiene: lo que se escriba ahí va por analogía y su veredicto vale menos.}}
{{Si solo hay un canal, escribe: "Sin evidencia: todo el corpus es de {{canal}}".}}

## Quién firma cada canal
{{Nombre y canal. Es el campo que usa el filtro 4 del guardián.}}
{{Si quien redacta no es quien firma, escríbelo aquí: se ahorra una reescritura entera.}}

## Lo que este manual NO sabe de ti
{{Obligatorio. Qué campos han quedado flojos, con cuántas piezas se ha trabajado,
  y de qué canales NO hay ninguna muestra.}}
{{Incluye también los huecos incómodos: si no hay ni un texto de cuando algo salió mal,
  dilo — es el registro que más confianza da y no hay prueba de que sepa escribirlo.}}

## Dónde acaba este manual
{{OBLIGATORIO. Se copia tal cual, ver más abajo. Sin esto, el manual bloquea todo lo
  que produzcan las demás skills del kit.}}
```

---

## El bloque de cierre — obligatorio, y se copia tal cual

Este bloque va **siempre** al final del manual generado. No es un adorno: en las pruebas del
kit, un manual de voz sin él **bloqueó dos piezas** de otras skills —prohibía las llamadas a
la acción y prohibía las preguntas al lector— porque en el corpus no aparecían.

El manual describe **cómo escribe esta marca hoy**. No es una ley de conversión.

```markdown
## Dónde acaba este manual

Este manual describe **cómo escribe esta marca hoy**, a partir de lo que ya ha publicado.
No es una ley de conversión ni una lista de prohibiciones.

**Lo que gobierna:** el tono. Arranques, muletillas, cierres, vocabulario, tratamiento al
lector, puntuación, formato y registro por canal.

**Lo que NO gobierna:** el mecanismo. Un botón, un formulario, un asunto de correo, un
enlace, una llamada a la acción o una pregunta de cierre **no son violaciones de voz**.

- Que en el corpus no haya llamadas a la acción significa *"en lo publicado hasta hoy no
  hay ninguna"*, no *"esta marca no puede usar una"*. Una landing necesita un botón aunque
  su web no lo tenga.
- Que nunca cierre con una pregunta no impide que un correo pida una respuesta. Lo que
  impide es que la pida con palabras que esta marca no usaría.
- Cuando una skill de conversión necesite un mecanismo del que aquí no hay evidencia, se
  escribe **con esta voz** y se anota como campo sin muestras. **No se bloquea.**

El guardián rechaza por **cómo** está escrito algo. Nunca por **que exista**.
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

Cómo se cuentan las piezas —y cómo no inflar el número— está en `corpus.md`. En cualquier
caso: **el número de piezas y su rango de fechas van en la cabecera del documento.** Quien
lo lea dentro de seis meses tiene que saber sobre qué se construyó.

---

## Dos voces en un solo manual

Es el caso normal en una empresa, no la excepción: el corpus es web corporativa en
"nosotros" y el canal de destino es el perfil personal de alguien.

**Nunca se promedian.** El promedio es una voz que no tiene nadie y que el guardián no puede
defender.

| Situación | Qué se hace |
|---|---|
| **3 o más piezas de cada voz** | Un manual, **dos registros declarados**. El cuerpo recoge lo común —vocabulario, palabras vetadas, puntuación, ritmo—; *Registro por canal* separa lo que cambia: quién habla, longitud, arranque, cierre |
| **De una voz hay 1 o 2 piezas** | Se elige la documentada y se declara: *"el manual es la voz de la empresa; lo que se escriba para el perfil personal va por analogía"*. Y cada pieza de ese canal se entrega con el aviso |

Las dos advertencias de la cabecera de la plantilla existen para esto. Y en los dos casos
hay que rellenar **Quién firma cada canal**: dos voces casi siempre significan dos personas.

---

## Dónde se guarda

**En Claude Code o Cowork:** como **`manual-de-voz.md`**, en la misma carpeta que
`perfil-marca.md`. Lo guardas tú, no el usuario.

**En Claude.ai:** en las instrucciones del Proyecto, debajo del perfil de marca, o subido
como archivo al Proyecto. Dile al usuario que lo haga en ese momento, no "cuando pueda":
un manual de voz que se queda en el historial de un chat está perdido.

---

## Cuándo se vuelve a hacer

- Cuando acumule **10 piezas nuevas** desde la última extracción.
- Cuando cambie de canal principal.
- Cuando le digan "últimamente escribes distinto".

No hay que rehacerlo cada mes: una voz no cambia tan rápido. Y si publica poco, **no tiene
que esperar meses**: el corpus crece con material que ya existe y que nadie había contado
—campañas de email ya enviadas, notas internas, documentos de trabajo, mensajes a
clientes— más cada pieza nueva que se publique. La de hoy ya es la primera.
