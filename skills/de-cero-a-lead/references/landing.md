# La landing: anatomía, reglas y por qué un solo fichero

## Por qué un solo fichero HTML

No es pereza. Es una decisión con tres consecuencias buenas:

1. **Se publica arrastrándolo.** Sin instalar nada, sin terminal, sin cuenta de GitHub.
2. **No se rompe.** No hay dependencias que caduquen ni una versión de nada que actualizar.
   Dentro de dos años sigue funcionando igual.
3. **Los rastreadores de IA la leen entera.** Todo el texto está en el HTML desde el primer
   byte, sin JavaScript que ejecutar. Esto importa más de lo que parece, y se explica en
   `agentes.md`.

Todo el CSS va **dentro** del fichero, en una etiqueta `<style>`. Nada de hojas externas, ni
tipografías de Google, ni librerías. Si la página necesita una imagen, mejor ninguna que una
que tarde tres segundos en cargar en el móvil de alguien con mala cobertura.

---

## Anatomía obligatoria

Por orden de aparición. Si falta uno de estos bloques, la landing está incompleta:

| # | Bloque | Qué tiene que hacer |
|---|---|---|
| 1 | **Titular** | Decir qué se lleva el visitante, con sus palabras. No con las tuyas |
| 2 | **Subtítulo** | Para quién es y para quién no. Una línea |
| 3 | **El formulario** | Arriba del todo, visible sin hacer scroll en un móvil |
| 4 | **Tres razones** | Qué contiene, qué problema resuelve, cuánto se tarda en usarlo |
| 5 | **Prueba** | Un caso, un dato o un testimonio **real**. Si no lo hay, se quita el bloque. Nunca se inventa |
| 6 | **Preguntas frecuentes** | Tres o cuatro. Escritas como las preguntaría una persona |
| 7 | **Repetir el formulario** | O un botón que salte a él |
| 8 | **Pie legal** | Quién eres, cómo contactarte, enlace a la política de privacidad |
| 9 | **Datos estructurados** | El bloque JSON-LD. Ver `agentes.md` |

### La regla del bloque 5

**Si el negocio todavía no tiene testimonios ni resultados, el bloque se elimina.** No se
rellena con "más de 100 clientes satisfechos" ni con caras de banco de imágenes. Una landing
honesta sin prueba social convierte peor que una con prueba real, y muchísimo mejor que una
con prueba inventada — porque la inventada te la pillan, y entonces ya no te creen nada.

---

## Reglas de copy

- **Un solo objetivo por página.** Un formulario, un botón, una acción. Si hay dos cosas que
  hacer, hay cero cosas que se hacen.
- **Nada de "descubre", "revoluciona", "transforma".** Di qué es y qué recibe.
- **El botón dice lo que pasa al pulsarlo.** "Enviármelo al correo" se entiende y "Enviar"
  no dice nada. Es una regla de claridad, no una promesa de conversión.
- **Escribe para el móvil.** La mayoría lo va a abrir con una mano, andando y con prisa.
  Párrafos de dos líneas.
- **El tono lo manda el perfil de marca**, no el gusto del diseñador ni el mío. Si el perfil
  dice "nunca diríamos *solución integral*", no aparece "solución integral".

---

## Reglas técnicas (que además son de accesibilidad)

- Cada campo con su `<label>` de verdad. Un `placeholder` no es una etiqueta: desaparece en
  cuanto escribes y deja al usuario sin saber qué campo era.
- `<meta name="viewport" content="width=device-width, initial-scale=1">`. Sin esto, en móvil
  se ve en miniatura.
- Contraste suficiente para leerse al sol. Gris claro sobre blanco queda muy fino en el
  monitor y es ilegible en la calle.
- Área de pulsación del botón de al menos 44 píxeles de alto (la referencia clásica de Apple
  para el tamaño de un dedo).
- `lang="es"` en la etiqueta `<html>`.
- Un solo `<h1>`.
- **Si es una landing de prácticas y no de un negocio real**, añade en el `<head>`:
  `<meta name="robots" content="noindex,nofollow">`. La URL es pública aunque no la compartas
  con nadie, y un negocio inventado no debería acabar indexado como si existiera.

---

## Lo que NO va en la landing

- **Banner de cookies... si no pones cookies.** Una landing de un solo fichero sin analítica
  ni píxeles no instala nada, y entonces no necesita banner. **En cuanto añadas un píxel de
  Meta o Google Analytics, sí lo necesitas**, y necesitas que el usuario acepte *antes* de
  que se cargue. Es un cambio grande: avísalo cuando llegue el momento, no lo cueles.
- **Vídeo de fondo con reproducción automática.** Se lleva por delante los datos móviles de
  quien te está leyendo en el autobús.
- **Chat emergente** el primer día. Todavía no hay nadie al otro lado.
- **Cuenta atrás falsa.** Si la urgencia no es real, es una mentira con reloj.

---

## El hueco del formulario

Deja este comentario en el sitio exacto donde irá el código del formulario, para que no haya
que buscarlo. **El usuario no tiene que editar el HTML a mano:** te pasa por el chat el
código que le da Tally, tú lo insertas aquí y le devuelves el fichero ya montado.

```html
<!-- ================================================== -->
<!-- PEGA AQUÍ EL CÓDIGO DE TU FORMULARIO                -->
<!-- Tally: Share → Embed → copiar el código             -->
<!-- ================================================== -->


<p class="fallback">
  ¿No ves el formulario?
  <a href="PON-AQUI-EL-ENLACE-DE-TU-FORMULARIO">Ábrelo en una página aparte</a>.
</p>
```

Ese enlace de abajo no es un adorno. Es lo que salva el lead cuando el widget no carga: un
bloqueador de anuncios, una conexión regular o un móvil viejo bastan para que el formulario
incrustado no aparezca nunca y el visitante se vaya pensando que la página está rota.
