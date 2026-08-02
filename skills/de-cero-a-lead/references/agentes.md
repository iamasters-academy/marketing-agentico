# La landing que también le habla a los agentes

Verificado el **2 de agosto de 2026**. Esta es la parte del kit que más rápido caduca: si
alguien lee esto en 2027, que compruebe cada afirmación antes de usarla.

---

## El punto de partida

Cada vez más gente le pregunta a una IA antes de comprar. Compara, filtra y llega al negocio
con la decisión medio tomada. Eso cambia quién lee tu página: **un programa, antes que una
persona.**

Un programa no se emociona con tu vídeo de cabecera. Busca datos: qué vendes, a cuánto, dónde,
en cuánto tiempo, y cómo se te contacta. Si tiene que adivinar alguno, no adivina: pasa al
siguiente resultado.

---

## Las cuatro cosas que sí funcionan

### 1 · Que tu texto esté en el HTML, no pintado por JavaScript

**Es la más importante y la que casi nadie comprueba.**

- **Un rastreador de IA no se comporta como tu navegador.** Lo que en tu página solo aparece
  *después* de que corra un script es, en el mejor de los casos, poco fiable para él: puede
  que no lo vea nunca.
- **El HTML plano es la opción robusta** y no depende de a quién le toque renderizar: lo leen
  igual los rastreadores, los lectores de pantalla y el móvil de alguien con mala cobertura.
- **Y cuidado con los nombres, que se mezclan continuamente.** Los que te pueden **citar** en
  una respuesta son los rastreadores de búsqueda (`OAI-SearchBot`, `Claude-SearchBot`,
  `PerplexityBot`). `GPTBot` y `ClaudeBot` son sobre todo de **entrenamiento**. Son cosas
  distintas y se deciden por separado (punto 4).

Tu landing de un solo fichero ya cumple esto por defecto. Es una ventaja gratis de haberla
hecho así.

> **Lo que no vas a encontrar aquí:** una tabla que diga qué motor concreto ejecuta
> JavaScript y cuál no. Eso cambia cada pocos meses, casi nadie lo documenta oficialmente y
> repetirlo como dato duro es justo el tipo de afirmación que este kit no hace. La regla
> práctica —pon el texto en el HTML— vale igual sin necesidad de esa tabla.

**Cómo se comprueba en diez segundos:** abre la página publicada, pulsa `Ctrl+U` (Windows) o
`Cmd+Opt+U` (Mac) para ver el código fuente, y busca tu titular con `Ctrl+F`. Si aparece, un
rastreador que no ejecuta JavaScript lo ve. Si no aparece, no lo ve nadie que no renderice.

> El formulario incrustado sí va con JavaScript, y está bien: lo que un rastreador necesita
> leer es tu propuesta, tu precio y tu contacto, no el widget del formulario.

### 2 · Datos estructurados en JSON-LD

`schema.org` en formato JSON-LD es la manera estándar de decirle a una máquina "esto es un
precio, esto es un horario, esto es un teléfono" sin que lo tenga que deducir del texto.

Va **dentro del `<head>`** del fichero. No se ve en pantalla. Rellena solo lo que sea cierto:
un dato inventado aquí es exactamente igual de grave que uno inventado en el texto visible, y
además es más difícil de detectar.

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "{{nombre del negocio}}",
  "description": "{{qué hace, en una frase}}",
  "url": "{{URL de la landing}}",
  "email": "{{correo de contacto real}}",
  "telephone": "{{teléfono, si lo hay}}",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "{{calle}}",
    "addressLocality": "{{ciudad}}",
    "postalCode": "{{CP}}",
    "addressCountry": "ES"
  },
  "areaServed": "{{zona donde trabajas}}",
  "openingHours": "Mo-Fr 09:00-18:00",
  "makesOffer": {
    "@type": "Offer",
    "name": "{{lo que ofreces en esta página}}",
    "description": "{{qué incluye}}",
    "price": "{{precio}}",
    "priceCurrency": "EUR",
    "availability": "https://schema.org/InStock"
  }
}
</script>
```

Si no es un negocio local, cambia `LocalBusiness` por `Organization` y quita la dirección.
Si vendes un producto físico, usa `Product` con su `Offer` dentro.

**Y las preguntas frecuentes, con su respuesta al lado:**

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "{{la pregunta, tal y como la haría una persona}}",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "{{la respuesta, completa, sin remitir a otra página}}"
      }
    }
  ]
}
</script>
```

**Regla:** cada pregunta del JSON-LD tiene que estar **también** en el texto visible de la
página, con la misma respuesta. Meter en los datos estructurados algo que no aparece en la
página es un truco viejo de SEO que hoy solo sirve para que desconfíen de ti.

### 3 · Políticas legibles, en texto

Precio, plazo de entrega, zona de servicio, política de devolución y cómo contactarte.
En texto, en la propia página, no en un PDF ni en una imagen.

No es una cuestión de IA: es lo mismo que necesita una persona con prisa. La diferencia es que
la persona a veces pregunta, y el agente nunca.

### 4 · Un `robots.txt` que no te deje fuera de la conversación

Se sube como un fichero de texto llamado `robots.txt` junto al `index.html`, en la raíz.

**Hay dos decisiones distintas y se toman por separado:**

- **Rastreadores de búsqueda** (`OAI-SearchBot`, `Claude-SearchBot`, `PerplexityBot`): son los
  que te pueden citar en una respuesta. Bloquearlos te borra de la conversación.
- **Rastreadores de entrenamiento** (`GPTBot`, `ClaudeBot`, `Google-Extended`,
  `Applebot-Extended`, `CCBot`, `Meta-ExternalAgent`): alimentan modelos. Bloquearlos es una
  decisión legítima y no afecta a tu posición en el buscador de Google.

Para un negocio que quiere que le encuentren, lo razonable es abrir todo:

```
# Quiero que me encuentren y que me citen
User-agent: *
Allow: /
```

> Si ves plantillas que añaden una línea `Sitemap:`, no la copies aquí: apuntaría a un
> fichero que esta landing no tiene, y anunciar un fichero que no existe no ayuda a nadie.
> Un sitemap tiene sentido cuando hay muchas páginas; una landing de una sola, no lo necesita.

Si prefiere aparecer en las respuestas pero no alimentar entrenamientos:

```
# Sí a la búsqueda, no al entrenamiento
User-agent: OAI-SearchBot
Allow: /
User-agent: Claude-SearchBot
Allow: /
User-agent: PerplexityBot
Allow: /

User-agent: GPTBot
Disallow: /
User-agent: ClaudeBot
Disallow: /
User-agent: Google-Extended
Disallow: /
User-agent: CCBot
Disallow: /
```

**Dos honestidades sobre esto:**

1. `robots.txt` es una petición educada, no una valla. Las grandes (OpenAI, Anthropic, Google,
   Apple, Perplexity) declaran que lo respetan. Un rastreador que no quiera respetarlo, no lo
   respeta.
2. Bloquear el entrenamiento y esperar visibilidad a la vez es una apuesta, no una certeza.
   Dilo así.

---

## Lo que NO se promete

### `llms.txt`

Es una **convención propuesta**, no un estándar: no la respalda ningún organismo de
estandarización. A día de hoy **ninguna de las grandes** —OpenAI, Google, Anthropic,
Perplexity— se ha comprometido públicamente a leerla en producción, y Google ha dicho
explícitamente que su buscador no la usa. Un estudio de SE Ranking sobre 300.000 dominios
encontró alrededor de un **10% de adopción**, y no halló correlación con ser citado más.

**Qué hacer con eso:** ponerlo cuesta cinco minutos, no hace daño y si algún día se adopta ya
estás. Venderlo como "el SEO de la IA" o cobrar por implantarlo es humo. Las dos cosas son
verdad a la vez y hay que decir las dos.

### Los protocolos de pago agéntico

Existen y se mueven rápido: hay **varios protocolos compitiendo** —los de Google y los de
OpenAI entre ellos—, alguno ha cambiado de manos y otros se han redefinido sobre la marcha.
Ninguno ha ganado.

> Aquí no van fechas ni nombres de versión a propósito. Cualquier cronología concreta que
> escribamos hoy va a estar mal dentro de tres meses, y una cronología mal recordada es
> exactamente el tipo de dato que este kit no repite. Si necesitas el detalle, ve a los
> anuncios oficiales de cada empresa el día que lo necesites.

**Qué hacer con eso:** enterarte, y nada más. Hoy no hay nada que un negocio pequeño gane
montándose encima de un protocolo que puede cambiar de dueño en seis meses. Cuando esto se
estabilice, se notará; no hará falta que te lo cuente un curso.

### La garantía de ser recomendado

Nadie puede garantizarte que un agente te recomiende. Todo lo de esta página va de **hacerte
legible**, no de comprar una posición. Quien te venda lo segundo te está vendiendo el mismo
humo de siempre con vocabulario nuevo.

---

## De dónde salen estas afirmaciones

| Afirmación | Dónde comprobarla |
|---|---|
| Nombres actuales de los rastreadores, y cuáles son de búsqueda y cuáles de entrenamiento | Páginas oficiales de rastreadores de OpenAI (GPTBot, OAI-SearchBot, ChatGPT-User), Anthropic (ClaudeBot, Claude-SearchBot, Claude-User), Perplexity y Google (Google-Extended). Son las únicas fuentes que valen para esto |
| Google Search no usa `llms.txt` | Declaraciones públicas del equipo de Search de Google (John Mueller) |
| ~10% de adopción de `llms.txt` y sin correlación con citas | Estudio de **SE Ranking** sobre 300.000 dominios. Cítalo con el nombre: un dato sin dueño no es un dato |
| Que los protocolos de pago agéntico siguen en movimiento | Anuncios oficiales de Google y de OpenAI. **No repitas fechas de memoria**, ábrelos |

Todo verificado el **2 de agosto de 2026**. Si alguna cifra ya no cuadra cuando lo leas,
gana la fuente, no este fichero.

---

## La comprobación de cinco minutos

1. Ver código fuente (`Ctrl+U`) y buscar tu titular. ¿Está? ✅
2. Buscar `application/ld+json` en ese mismo código fuente. ¿Está? ✅
3. Abrir el validador de datos estructurados de Google (Rich Results Test) y pegar tu URL.
   ¿Sin errores? ✅
4. Abrir `tu-dominio/robots.txt`. ¿Existe y dice lo que querías decir? ✅
5. Leer tu página como si fueras un agente: ¿está el precio? ¿el plazo? ¿la zona? ¿el
   contacto? Lo que falte, falta también para tus clientes.
