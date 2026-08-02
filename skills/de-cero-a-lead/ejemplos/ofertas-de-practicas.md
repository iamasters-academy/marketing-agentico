# Ofertas de prácticas

Para quien no tiene negocio propio todavía, o quiere montar el circuito antes de hacerlo en
serio con el suyo.

> ⚠️ **Estos negocios son inventados.** Son las mismas tres marcas de prácticas del kit
> (`/mi-marca`), para que los ejercicios encajen entre sí.
>
> **Lo que NO es inventado es el circuito:** la landing se publica de verdad, la hoja recibe
> filas de verdad y el correo llega de verdad. El único dato ficticio es de quién es el
> negocio. Díselo así al usuario: es la diferencia entre haber montado el circuito y haberlo
> mirado.

---

## A · Clínica dental "Sonrisa Norte" (servicio local, B2C)

**Oferta:** una simulación de cómo quedaría su sonrisa, hecha sobre una foto que envía él, en
48 horas y sin compromiso.

**Dato que se pide:** el correo. Nada más — la foto se pide después, en el correo de
bienvenida, cuando ya ha dicho que sí.

> ⚠️ **En prácticas, la foto no se pide nunca de verdad.** Este ejemplo existe para montar el
> circuito, no para recoger imágenes de nadie. Y si algún día lo replicas para una clínica
> **real**: la foto de la boca de un paciente, tratada para valorar un tratamiento, es un
> dato de salud. Eso está muy por encima del mínimo de esta skill —pide su propio análisis y
> un asesoramiento que no es el mío—. Si no quieres pisar ese charco, elige la oferta B o la
> C para practicar.

**Titular:** Mira cómo quedaría tu sonrisa antes de gastarte un euro.
**Subtítulo:** Nos mandas una foto, te devolvemos la simulación en 48 horas. Sin compromiso y
sin que venga nadie a llamarte por teléfono.
**Botón:** Quiero ver mi simulación

**Correo de bienvenida:**

> **Asunto:** Tu simulación · solo falta una foto
>
> Hola:
>
> Ya te tengo apuntado. Para hacer la simulación necesito una foto tuya sonriendo, de frente
> y con buena luz. Respóndeme a este correo con la foto adjunta y la tienes de vuelta en 48
> horas.
>
> No te va a llamar nadie. Si después de verla quieres una cita, me lo dices tú.
>
> {{Nombre}} · Sonrisa Norte

**Preguntas frecuentes para la landing:** ¿Cuánto cuesta la simulación? · ¿Qué hacéis con mi
foto? · ¿Me vais a llamar por teléfono? · ¿Cuánto tarda un tratamiento como este?

---

## B · "Turnos" (software B2B pequeño)

**Oferta:** la plantilla de cuadrante semanal que usan sus clientes, en hoja de cálculo, lista
para copiar y usar el domingo que viene.

**Dato que se pide:** el correo.

**Titular:** El cuadrante de la semana, hecho en 20 minutos en vez de en dos horas.
**Subtítulo:** La plantilla que usan bares y restaurantes pequeños para dejar de cuadrar
turnos por WhatsApp. Gratis, y no hace falta instalar nada.
**Botón:** Enviadme la plantilla

**Correo de bienvenida:**

> **Asunto:** Aquí tienes la plantilla de cuadrantes
>
> Hola:
>
> Aquí la tienes: {{enlace}}. Haz una copia y ya es tuya.
>
> Un consejo antes de empezar: rellena primero los turnos que no se mueven nunca. Lo que
> queda suele ser mucho menos lío del que parecía.
>
> Si el domingo que viene te ahorra un rato, escríbeme y te cuento cómo lo automatizan los
> que ya usan Turnos.
>
> {{Nombre}} · Turnos

**Preguntas frecuentes:** ¿Hace falta instalar algo? · ¿Sirve si tengo dos locales? · ¿Es
gratis de verdad? · ¿Qué pasa con mis datos?

---

## C · "Raíz" (producto, e-commerce)

**Oferta:** cinco recetas de treinta minutos con conserva de verdura, en PDF, más un cupón de
bienvenida para la primera caja.

**Dato que se pide:** el correo.

**Titular:** Cinco cenas de verdura en treinta minutos. Sin cocinar de cero.
**Subtítulo:** Las recetas que mandamos a quien compra por primera vez. Te las damos antes,
por si te convencen más que nosotros.
**Botón:** Enviadme las recetas

**Correo de bienvenida:**

> **Asunto:** Tus cinco recetas (y un descuento, si te apetece)
>
> Hola:
>
> Aquí van las recetas: {{enlace}}. La de la crema de calabaza asada es la que más nos
> repiten.
>
> Si algún día te apetece probar la caja, con el código {{CUPÓN}} tienes {{descuento}} en la
> primera. Sin prisa: el código no caduca en 24 horas ni nada de eso.
>
> {{Nombre}} · Raíz

**Preguntas frecuentes:** ¿De dónde sale la verdura? · ¿Cuánto dura un tarro abierto? ·
¿Cuánto tarda el envío? · ¿Puedo devolverlo si no me gusta?

---

## Cómo usar esto

1. Deja que elija una de las tres, en una frase cada una. Sin dar la chapa.
2. Genera la landing con esos textos, siguiendo `references/landing.md`.
3. **El circuito se monta entero y de verdad**, con las cuentas del usuario.
4. El test de la mentira se ejecuta completo. Aquí no hay excusa: el paso 1 se puede hacer
   igual que con un negocio real, porque la fontanería es la misma.
5. **En modo prácticas, la parte legal se simplifica pero no desaparece:** la landing no se
   difunde y el formulario lo rellena solo el usuario. En cuanto se comparta la URL con
   cualquier otra persona, se aplica `references/legal-minimo.md` entero.
6. **Y tres cosas que en prácticas no se negocian**, porque la URL es pública aunque no la
   mandes a nadie:
   - `<meta name="robots" content="noindex,nofollow">` en el `<head>`, para que un negocio
     inventado no acabe indexado como si existiera.
   - Un aviso visible en la propia página: *"Negocio de prácticas. Esta empresa no existe."*
   - **No se piden fotos, ni teléfonos, ni datos de terceros.** Solo el correo del propio
     usuario, que es quien está practicando.
