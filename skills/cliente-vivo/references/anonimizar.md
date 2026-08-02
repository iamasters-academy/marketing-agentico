# Antes de pegar conversaciones de clientes

Esta skill funciona mucho mejor con material interno: llamadas, correos, mensajes. Ese
material lleva datos de personas reales, así que hay un paso previo que no se salta.

**Regla corta:** lo que a esta skill le sirve son **las frases**, no quién las dijo. Cambiar
un nombre por "Cliente A" no le quita nada al análisis.

> ⚠️ **Y una advertencia honesta:** quitar nombre, teléfono y correo **no garantiza** que la
> persona no sea identificable. El cargo, la ciudad, el sector, una fecha concreta o una
> combinación de detalles poco frecuentes pueden bastar para saber de quién se habla —sobre
> todo en B2B, en pueblos pequeños o en negocios con pocos clientes. Esto reduce el riesgo;
> no lo elimina. Y no es asesoramiento legal.

---

## Qué hay que quitar

| Quitar | Sustituir por |
|---|---|
| Nombre y apellidos | `Cliente A`, `Comercial`, `Paciente B` |
| Teléfonos, correos, usuarios de redes | *(borrar la línea entera)* |
| Direcciones y códigos postales | `[ciudad]` si importa; si no, borrar |
| DNI, número de póliza, de pedido, de historia clínica | *(borrar)* |
| Nombre de la empresa del cliente, si es B2B y se le identifica | `un restaurante de 9 empleados` |
| Datos de salud, económicos, religiosos, sexuales o de origen | **Borrar siempre.** Estos no se anonimizan "un poco" |
| Nombres de tus empleados | `Comercial 1`, `Soporte` |
| **Combinaciones que señalan a una sola persona** (cargo + empresa + ciudad, "el único fisio de X", una fecha muy concreta) | Generalizar: `responsable de operaciones de una pyme industrial`, `primavera de 2026` |

**Lo que sí se conserva, porque es el material:** las palabras exactas, las muletillas, los
tacos, las cifras que dice el cliente sobre su propio problema, y la fecha aproximada.

---

## Cómo hacerlo rápido

- **Buscar y reemplazar** en un documento: dos minutos para una transcripción de media hora.
- **En una hoja de cálculo:** borra directamente las columnas de nombre, teléfono y correo
  antes de exportar a CSV. No las exportes y luego las limpies.
- **Antes de pegar, relee las tres primeras líneas.** Es donde se cuela el "Hola, soy Marta
  Fernández y os llamaba por…".

---

## Dos cosas que conviene decir en voz alta

**Grabar y guardar no son lo mismo.** Que participes en una llamada no significa que puedas
almacenar y tratar sin más lo que dice la otra persona: eso son datos personales. Avisa
siempre de que grabas, al principio y de forma clara.

**Esta skill no da asesoramiento legal, y yo tampoco.** Si trabajas en una empresa con
responsable de protección de datos, o si el material toca salud, menores o datos
financieros, pregunta ahí antes de pegar nada. Anonimizar es lo mínimo, no es una vía libre.

---

## Si el usuario ya ha pegado algo con datos personales

No lo dejes pasar, y **no le digas que renombrarlo lo arregla**: el dato ya se ha enviado, y
cambiarle la etiqueta en tu respuesta no lo borra de la conversación.

> "Ojo: en lo que me has pegado hay nombres completos y un teléfono. Eso ya está en este
> chat, y renombrarlo ahora no lo quita de aquí. Dos cosas:
> **1)** Yo a partir de ahora trabajo solo con las frases y les llamo Cliente A y Cliente B,
> y no vuelvo a escribir esos datos.
> **2)** Si el material es sensible —salud, menores, datos financieros—, lo más limpio es
> que borres esta conversación, limpies el texto y lo pegues otra vez en una nueva. Tú
> decides; yo te lo digo porque es lo que yo haría."

Y a partir de ahí, **usa las etiquetas anónimas en todo el expediente y no reproduzcas los
datos originales en ninguna respuesta**, aunque el material que te pegaron los llevara.
