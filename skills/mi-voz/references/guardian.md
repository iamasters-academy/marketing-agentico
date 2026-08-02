# El guardián de voz

## Lo primero: qué NO es esto

**El guardián no es un detector de IA.** Y un detector de IA no es una prueba de autoría —
conviene decirlo antes que nada porque medio internet vive de venderlos:

- OpenAI retiró el suyo el **20 de julio de 2023** "debido a su baja tasa de precisión"
  (*"the AI classifier is no longer available due to its low rate of accuracy"*).
- Los estudios académicos encuentran falsos positivos altos y un sesgo documentado contra
  quien no escribe en su lengua materna: un texto humano perfectamente normal sale marcado
  como IA. Fuente y detalle en `fuentes.md`.

Traducción práctica: **si pasas un texto tuyo por un detector, puede decirte que lo ha
escrito una máquina.** No sirven como prueba de quién escribió qué: ni para acusar a nadie,
ni para validarte a ti. No los uses como validación.

Lo que hace el guardián es otra cosa, mucho más aburrida y mucho más útil:

> Comparar el texto contra **el manual de voz de esta persona concreta** y contra los hechos
> de su negocio, y decir dónde no encaja **citando la línea exacta**.

No pregunta "¿esto suena a IA?". Pregunta "¿esto se parece a lo que tú escribes, y hay algo
aquí que solo puedas decir tú?".

---

## Cómo se ejecuta

**En Claude Code:** lánzalo como un subagente —una copia de Claude con su propio contexto,
que solo ve el manual de voz y el texto a juzgar, no la conversación en la que se escribió—.
Eso importa: quien ha escrito el texto tiende a defenderlo.

**En Claude.ai:** en un mensaje aparte, cambiando de papel de forma explícita:

> "Ahora dejo de escribir y paso a criticar. Voy a olvidarme de que este texto lo he
> redactado yo y lo voy a juzgar contra tu manual de voz, línea a línea."

No es lo mismo que un subagente de verdad, pero funciona bastante bien si el cambio de papel
se anuncia y el juicio se hace **citando el manual**, no de memoria.

---

## Los tres filtros

El texto tiene que pasar los tres. Basta con fallar uno.

### Filtro 1 — Voz

¿Se parece a lo que escribe esta persona? Se comprueba campo a campo contra el manual:

- ¿El arranque es de los suyos, o es un titular publicitario?
- ¿Hay alguna palabra de su lista negra? Ojo con esta: que una palabra **no aparezca** en el
  corpus no demuestra que no la use nunca. Es un aviso, no un veto: por sí sola no tira un
  texto, se señala y se mira si además falla algo más.
- ¿El formato encaja? (emojis, viñetas, negritas, longitud de párrafo)
- ¿El cierre es de los suyos?
- ¿El tratamiento al lector es el que corresponde a ESE canal?

### Filtro 2 — Sustancia

¿Hay aquí algo que **solo pueda decir esta persona**? Vale cualquiera de estas cinco:

1. Un nombre propio (cliente, proveedor, sitio, persona).
2. Una cifra con su origen explicado.
3. Una fecha o un momento concreto.
4. Una experiencia propia contada en primera persona.
5. Una opinión con la que alguien pueda estar en desacuerdo.

**Si no hay ninguna de las cinco, el texto falla**, por bien escrito que esté. Este es el
filtro que más rechaza y el que más valor aporta: la mayor parte de lo que "suena a IA"
suena a IA porque **no dice nada que su autor no pudiera haber copiado de otro**.

### Filtro 3 — Canal

¿Es nativo del canal, o es un post genérico con el envoltorio cambiado?

- ¿La primera frase se parece a la de otra pieza de esta misma tanda? → falla.
- ¿Lleva marcas de otro canal? (hashtags en X, "hilo" en LinkedIn, enlaces en Instagram).
- ¿Funciona sin haber leído la otra pieza?

---

## Los tics: qué buscar cuando el texto "suena raro"

No son delitos por sí solos —**mucha gente escribe así de verdad**—. Son señales de que hay
que ir a comprobar contra el manual. Si el manual dice que esta persona hace eso, entonces
está bien.

**De estructura**
- Todo va de tres en tres: "rápido, sencillo y eficaz". Tres ejemplos, tres razones, tres
  ventajas. Un texto humano tiene números feos: dos cosas, o cinco.
- La antítesis en bucle: "No es X. Es Y." repetida cada tres párrafos.
- Todas las frases miden lo mismo. Un ritmo humano es irregular.
- La escalera final: cada párrafo un poco más épico que el anterior.

**De vocabulario (en español)**
- "En un mundo donde…", "En el vertiginoso mundo de…", "En la era de…"
- "No se trata solo de X, sino de Y"
- "desbloquea", "potencia", "eleva", "transforma", "empodera", "revoluciona"
- "clave", "fundamental", "esencial", "crucial" como muletilla de adjetivo
- "la digitalización ya no es una opción, es una necesidad"
- "Espero que esto te sirva", "¿Y tú, qué opinas?"

**De contenido** — estos son los graves:
- Cero nombres propios en todo el texto.
- Cifras sin fuente, o peor: "una parte significativa", "muchos expertos coinciden".
- Ninguna afirmación que pueda molestar a nadie.
- Una conclusión con la que es imposible estar en desacuerdo.

---

## El veredicto

Tres salidas, y hay que elegir una. "Está bastante bien pero…" no es un veredicto.

| Veredicto | Cuándo | Qué se hace |
|---|---|---|
| **PASA** | Los tres filtros limpios | Se entrega |
| **REESCRIBE** | Falla el filtro 1 o el 3, pero la sustancia está | Se arregla lo señalado |
| **TIRA** | Falla el filtro 2 | Se vuelve a la idea, no al texto |

**Cuando falla la sustancia no se reescribe.** Si no hay nada propio dentro, reescribirlo
solo lo disfraza mejor. Hay que volver a la idea y buscar el dato, el nombre o la opinión
que faltaba — y muchas veces eso significa preguntarle algo al usuario.

## Cómo se escribe el veredicto

Una regla y solo una: **cada objeción cita la línea exacta y el campo del manual que
incumple.**

```
❌ "El tono no acaba de encajar con tu voz."
✅ "«Descubre cómo optimizar la gestión de tu equipo» — 'optimizar' no aparece ni una vez
   en tus 12 piezas, y en /mi-marca dijiste que nunca dirías 'optimización de recursos
   humanos'."
```

Si no puedes citar la línea, no es una objeción: es una sensación. Guárdatela.

---

## El límite de dos reescrituras

Máximo **dos** vueltas. Si a la tercera sigue sin pasar, se para y se le dice al usuario:

> "Llevamos tres intentos y sigue sin sonar a ti. No creo que el problema sea la redacción:
> creo que esta idea todavía no es tuya. ¿Qué te pasó a ti con esto? Cuéntamelo como se lo
> contarías a alguien en un bar y lo escribo con eso."

Es incómodo y es el momento en que la skill hace su trabajo. Una fábrica de contenido que
nunca para es una fábrica de ruido.

---

## Lo que el guardián no puede hacer

Dilo cuando entregues, no lo escondas. Y el primero va primero por algo:

- **No comprueba que lo que dices sea verdad.** Un dato inventado con tu tono exacto pasa los
  tres filtros sin despeinarse. **PASA no significa publicable: significa que suena a ti.**
  Los nombres, las cifras y las fechas los verificas tú contra la fuente antes de publicar.
- **No garantiza que un lector no piense que lo ha escrito una IA.** Eso no se puede medir y
  quien te diga lo contrario te está vendiendo un detector.
- **No juzga si la pieza va a funcionar.** Sonar a ti y funcionar son dos cosas distintas.
- **No mejora tu voz.** Si tu voz publicada es aburrida, el guardián defiende que sigas
  siendo aburrido con precisión. Cambiar de voz es una decisión tuya, y se hace publicando
  distinto durante meses, no en un chat.
