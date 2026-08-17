# Datos personales: el aviso no protege, la parada sí

Esta skill funciona con material interno —llamadas, correos, mensajes— y ese material lleva
datos de personas reales.

**Lo primero, porque cambia cómo está escrito este fichero:**

> ### El aviso previo no funciona. Lo comprobamos.
>
> En la prueba del kit, el aviso se dio en el segundo turno, en negrita y con lista. La
> usuaria lo leyó, dijo que vale, y **cinco minutos después pegó nombre, apellido, teléfono y
> correo corporativo**. No por descuido suyo: copió su cuaderno tal cual, que es lo que hace
> todo el mundo.
>
> **Lo que protege es la parada de después.** Por eso este fichero empieza por ahí y deja el
> aviso previo en una línea.

**La regla corta:** a esta skill le sirven **las frases**, no quién las dijo. Cambiar un
nombre por "Cliente A" no le quita nada al análisis.

---

## El mecanismo — escanear en cuanto llega el material

**Antes de analizar nada, escanea lo que te acaban de pegar.** Es un paso del método, no una
cortesía. Se hace siempre, con todo el material, aunque el usuario diga que ya lo ha limpiado.

### La lista de escaneo

- [ ] Nombres y apellidos — de clientes **y de tus propios empleados**
- [ ] Teléfonos, correos, usuarios de redes
- [ ] Direcciones y códigos postales
- [ ] DNI, pólizas, números de pedido, de expediente o de historia clínica
- [ ] **Nombres de empresas cliente** — en B2B identifican más que el nombre de la persona
- [ ] Datos de salud, económicos, religiosos, sexuales o de origen
- [ ] **Combinaciones que señalan a una sola persona** — cargo + sector + provincia, *"el
      único de {ciudad} que lleva {especialidad}"*, *"la única clínica con tres sedes de
      {comarca}"*, una fecha muy concreta

**Esa última es la que más se cuela y casi nadie la ve.** Sin nombre, sin teléfono y sin
correo, una frase como *"el único despacho de Castellón que lleva concursal"* señala a una
única empresa. Si te la encuentras, dila expresamente: el usuario no la había visto como dato
personal, y es la que peor arreglo tiene después.

### El guion cuando encuentras algo

No lo dejes pasar, y **no le digas que renombrarlo lo arregla**: el dato ya se ha enviado, y
cambiarle la etiqueta en tu respuesta no lo borra de la conversación. Son dos cosas distintas
y solo una la puedes resolver tú.

> "Para un momento antes de seguir. Esto es material buenísimo y en un minuto te digo por qué,
> pero hay algo que no voy a dejar pasar 'por esta vez'.
>
> **En lo que me has pegado hay datos personales:** {la lista concreta, en tabla, diciendo
> dónde está cada uno y por qué es dato personal}.
>
> **Dos cosas, y son distintas:**
>
> **1)** A partir de ahora yo trabajo **solo con las frases**, con etiquetas anónimas, y no
> vuelvo a escribir ninguno de esos datos en ninguna respuesta, aunque el material los lleve.
>
> **2)** La parte incómoda: **eso ya está en este chat, y que yo le cambie el nombre no lo
> borra de aquí.** Tú decides: si el material te parece sensible, lo más limpio es que borres
> esta conversación, limpies el texto y lo pegues en una nueva. Te lo digo porque es lo que yo
> haría, no para darte la charla. Si en tu empresa hay alguien que lleva protección de datos,
> esta decisión es de esa persona. **Y esto no es asesoramiento legal.**"

Y a continuación, **la tabla de etiquetas** que vas a usar en todo el expediente:

| Etiqueta | Qué es |
|---|---|
| **Cliente A** | {sector y tamaño}. Compró. {mes} |
| **Contacto B** | {sector y tamaño}. Pidió presupuesto, **no compró**. {mes} |
| **Contacto C** | {sector y tamaño}. Interesado, **se enfrió**. {mes} |
| **Formador / Comercial / Soporte** | Empleados propios |
| **Encuesta F1–F8** | Respuestas anónimas, población distinta |

Enseñarla no es burocracia: hace que el usuario vea que el material sigue siendo utilizable
sin los nombres, que es justo lo que no se cree hasta que lo ve.

---

## Qué se quita y por qué se sustituye

| Quitar | Sustituir por |
|---|---|
| Nombre y apellidos | `Cliente A`, `Comercial`, `Paciente B` |
| Teléfonos, correos, usuarios de redes | *(borrar la línea entera)* |
| Direcciones y códigos postales | `[ciudad]` si importa; si no, borrar |
| DNI, póliza, número de pedido, historia clínica | *(borrar)* |
| Nombre de la empresa cliente, si se la identifica | `un restaurante de 9 empleados` |
| Datos de salud, económicos, religiosos, sexuales o de origen | **Borrar siempre.** Estos no se anonimizan "un poco" |
| Nombres de tus empleados | `Comercial 1`, `Soporte` |
| **Combinaciones que señalan a una sola persona** | Generalizar: `responsable de operaciones de una pyme industrial`, `primavera de 2026` |

**Lo que sí se conserva, porque es el material:** las palabras exactas, las muletillas, los
tacos, las cifras que dice el cliente sobre su propio problema, y la fecha aproximada.

> ⚠️ **Advertencia honesta:** quitar nombre, teléfono y correo **no garantiza** que la persona
> no sea identificable. El cargo, la ciudad, el sector, una fecha concreta o una combinación de
> detalles poco frecuentes pueden bastar —sobre todo en B2B, en pueblos pequeños o en negocios
> con pocos clientes. Esto reduce el riesgo; no lo elimina. Y no es asesoramiento legal.

---

## El aviso previo: una línea, no un párrafo

Sigue diciéndose, porque a algunos les llega. Pero **corto**, dentro de la petición de
material, y sin fingir que resuelve nada:

> "Quítale los nombres y los teléfonos si te da tiempo. Si no, ya lo paro yo cuando lo vea."

Un aviso largo y en negrita hace dos cosas malas: se salta igual, y encima le da al usuario la
sensación de que ya está avisado y la responsabilidad es suya. La responsabilidad de mirar es
tuya.

**Si el usuario quiere limpiarlo antes**, esto es lo rápido:

- **Buscar y reemplazar** en el documento: dos minutos para una transcripción de media hora.
- **En una hoja de cálculo:** borra las columnas de nombre, teléfono y correo **antes** de
  exportar a CSV, no después.
- **Relee las tres primeras líneas** de cada pieza. Es donde se cuela el *"Hola, soy … y os
  llamaba por…"*.

---

## Dos cosas que conviene decir en voz alta

**Grabar y guardar no son lo mismo.** Que participes en una llamada no significa que puedas
almacenar y tratar sin más lo que dice la otra persona: eso son datos personales. Avisa
siempre de que grabas, al principio y de forma clara.

**Esta skill no da asesoramiento legal, y tú tampoco.** Si el usuario trabaja en una empresa
con responsable de protección de datos, o si el material toca salud, menores o datos
financieros, que pregunte ahí antes de pegar nada. Anonimizar es lo mínimo, no es vía libre.

---

## Y una cosa más, que el usuario se lleva puesta

Casi siempre, cuando paras por datos personales, el usuario dice alguna versión de *"pues
fulano pega cosas en su ChatGPT todo el rato"*. Es el momento de decir lo útil:

> "Eso que acabas de hacer tú lo hace todo tu equipo, y en herramientas donde nadie les para.
> Esto que hemos hecho aquí —escanear antes de pegar y trabajar con etiquetas— es lo que
> merece la pena contar en la próxima reunión. Vale más que el expediente."
