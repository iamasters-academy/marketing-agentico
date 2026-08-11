# Arranque — el mismo para las nueve skills

> Este fichero se copia dentro de `references/` de cada skill del kit.
> Cada clase empieza desde cero, en un chat nuevo. **Ninguna skill puede dar por hecho que
> viene de otra.** Este bloque resuelve eso en menos de un minuto.

---

## Lo primero que haces, siempre

Busca el perfil de marca **antes de saludar**. No preguntes si existe: míralo tú.

**En Claude Code o Cowork** — busca en la carpeta de trabajo, por este orden:

1. `perfil-marca.md`
2. `marketing/perfil-marca.md`
3. Cualquier fichero que empiece por `perfil-marca` en las subcarpetas

**En Claude.ai** — mira las instrucciones del proyecto y los ficheros adjuntos al chat.

> **El nombre del fichero es `perfil-marca.md`. Sin fecha, sin número, sin prefijo.**
> Si lo encuentras con otro nombre, úsalo igual, pero al terminar guárdalo como
> `perfil-marca.md` y dile al usuario que lo has renombrado para que las demás lo encuentren.

---

## Rama A — Hay perfil

No lo recites entero. Resume en dos líneas y confirma:

> "He leído tu perfil: **{negocio en una frase}**, para **{cliente}**. Tu objetivo a 90 días
> es **{objetivo}**. Voy con eso — dime si algo ha cambiado."

Y arranca. **No vuelvas a preguntar nada que esté en el perfil.** Si lo haces, el usuario
va a pensar que no lo has leído, y tendrá razón.

Si el perfil trae una sección **`## Correcciones`**, léela también: ahí es donde otras
skills han dejado apuntado lo que descubrieron. Puede contradecir al resto del perfil, y
si lo hace, **manda la corrección**, que es más reciente.

---

## Rama B — No hay perfil: modo exprés

**No mandes al usuario a otra skill.** Está en una clase, quiere hacer *esta*. Resuélvelo tú:

> "Veo que todavía no tienes perfil de marca. No pasa nada: dime tres cosas y seguimos.
>
> 1. ¿Qué vendes, en una frase?
> 2. ¿A quién?
> 3. ¿Tienes web? Pásame la dirección y la leo yo."

**Las tres de golpe, no de una en una.** Es un trámite, no una entrevista.

Cuando responda:

- **Si te da una URL, léela.** Con Firecrawl si está, si no con la herramienta de lectura
  web. De ahí sacas el tono, los servicios, los sectores y —si vas a producir un
  entregable— los colores. Sale mejor que lo que te iba a escribir a mano.
- **Si no tiene web**, sigue con las dos primeras respuestas. Es suficiente para arrancar.
- **Si no tiene negocio**, ofrécele la marca de prácticas de `/mi-marca` y sigue con esa.

Al terminar la skill, guarda lo que has averiguado como `perfil-marca.md` y díselo:

> "Te he dejado un `perfil-marca.md` con lo que hemos usado hoy. La próxima skill que abras
> lo va a encontrar sola y no te preguntará esto otra vez."

---

## Rama C — Hay perfil pero le falta lo que tú necesitas

Pasa a menudo: el perfil existe pero no trae, por ejemplo, los competidores, o el objetivo.

**Pregunta solo lo que te falta, y solo si no puedes averiguarlo.** Antes de preguntar,
intenta buscarlo (ver `_investigar.md`). Preguntar es el último recurso, no el primero.

Si lo averiguas tú, **enséñalo para que lo confirme**, no lo des por bueno en silencio:

> "No tenías competidores en el perfil. He buscado y estos tres compiten contigo de verdad:
> {A}, {B}, {C}. ¿Te cuadran, o quito alguno?"

---

## Al terminar: deja el rastro

Toda skill que descubra algo que cambie el perfil **lo escribe en el perfil**, en una
sección al final:

```markdown
## Correcciones

- **{fecha} · /{skill}:** {qué se descubrió y qué invalida}
```

Ejemplo real: `/el-hueco` descubrió que uno de los "competidores" del perfil era en realidad
un servicio de prevención de riesgos laborales. Si no lo apunta ahí, la siguiente skill —en
otra clase, otro día— vuelve a medir contra ese competidor falso.

**Es la línea de código más barata del kit y la que más errores evita.**

---

## Lo que no se hace nunca, en ninguna skill

- **No pidas contraseñas, claves de API ni accesos.** Si el usuario te los ofrece —y lo va
  a hacer, con toda la buena intención—, recházalos en el momento y explica la alternativa.
- **No preguntes en qué entorno está.** Dedúcelo: si puedes escribir ficheros, es Claude Code
  o Cowork; si no, es Claude.ai. Adapta las instrucciones de guardado sin dar la turra.
- **No prometas tiempos que no vas a cumplir.** Si la skill son veinte minutos, di veinte.
