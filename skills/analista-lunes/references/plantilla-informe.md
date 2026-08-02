# Plantilla del informe y registro de hipótesis

Dos cosas: el informe que entregas cada lunes, y la lista que hace que la semana siguiente
sirva para algo. **La segunda es la que casi todo el mundo se salta, y es la que convierte
esto en un analista en vez de en un generador de informes.**

---

## 1. El informe

Rellena esto tal cual. Los campos no son decorativos: cada uno existe para bloquear un error
concreto.

```markdown
# El analista de los lunes · {{negocio}}
_{{DD/MM}}–{{DD/MM}} vs. {{DD/MM}}–{{DD/MM}} · fuente: {{Analytics / CSV de X}} · {{fecha de hoy}}_

## Lo que pasó con las hipótesis del lunes pasado
_(solo a partir del segundo informe; si es el primero, escribe "primer informe, no hay nada que revisar")_

| Hipótesis | Qué dije que miraría | Qué ha pasado | Veredicto |
|---|---|---|---|
| {{…}} | {{…}} | {{…}} | Confirmada / Descartada / Sigue abierta |

---

## Las tres cosas que han cambiado

### 1. {{Titular de una línea, con el número dentro. Ej.: "La búsqueda orgánica ha traído 412 sesiones menos, casi todas de móvil"}}

- **El cambio:** de {{X}} a {{Y}} ({{±Z %}}) · {{métrica}} · {{segmento}}
- **Cuánto pesa:** {{traducción a negocio: pedidos, leads o euros. Si no hay datos para traducirlo, dilo}}
- **Hipótesis:** {{por qué creo que ha pasado, en una o dos frases}}
- **Qué la tumbaría:** {{qué tendrías que ver para saber que esta hipótesis es falsa}}
- **Ya he descartado:** {{medición rota / festivo / un solo día / tráfico basura / cambio de la herramienta — y cómo lo has descartado}}
- **No he podido comprobar:** {{lo que no se ha mirado porque los datos no estaban. Ej.: "si está dentro de la variación normal: no tengo las semanas anteriores"}}
- **Qué mirar mañana:** {{una comprobación concreta y acotada; si no cabe en diez minutos, dilo}}
- **Confianza:** {{alta / media / baja}} — {{por qué}}

### 2. {{…}}

### 3. {{…}}

---

## Lo que se ha movido y NO es noticia

| Qué se movió | Por qué no entra |
|---|---|
| {{Canal X, +180 %}} | Volumen bajo: de 5 a 14 sesiones |
| {{Métrica Y, -19 %}} | Dentro de su variación normal de las últimas 8 semanas |
| {{Página Z, -40 %}} | Es un solo día: el resto de la semana está igual |

## Lo que estos datos no pueden decirme

- {{qué no está medido en esta fuente}}
- {{si hay avisos de umbrales de datos o de muestreo en los informes usados}}
- {{qué haría falta para confirmar la hipótesis principal}}
```

### Por qué está cada campo

| Campo | Qué error bloquea |
|---|---|
| **De X a Y**, con absolutos | Que alguien tome una decisión cara por un porcentaje construido sobre cuatro clics |
| **Cuánto pesa** | Que el informe ordene por porcentaje en vez de por dinero |
| **Qué la tumbaría** | Que una historia bonita pase por hallazgo. Si no se puede tumbar, no es una hipótesis |
| **Ya he descartado** | Que se busque una explicación de marketing para una etiqueta rota |
| **No he podido comprobar** | Que un filtro que no se aplicó parezca aplicado. Es el campo que separa "he mirado y no es eso" de "no lo he mirado" |
| **Qué mirar mañana** | Que el informe se lea y no pase nada. Sin siguiente paso no es un hallazgo, es una curiosidad |
| **Confianza** | Que todo suene igual de seguro cuando no lo está |
| **Lo que NO es noticia** | Es la prueba de que ha habido filtro. Sin esta tabla, "los tres cambios" pueden ser tres cualesquiera |

---

## 2. El registro de hipótesis (el bucle)

Un fichero que se va acumulando.

> **Aquí no hay magia, y hay que decirlo antes de que el usuario se lleve el chasco dentro de
> una semana:** Claude **no recuerda** el chat del lunes pasado. Si el lunes que viene abre una
> conversación nueva sin traer este registro, empieza de cero y el bucle no existe.
>
> - **En Claude Code:** guárdalo como `analista-lunes-registro.md` junto al perfil de marca.
>   La semana siguiente lo lees tú solo.
> - **En Claude.ai:** lo suyo es tener un **Proyecto** para esto y dejar el registro en sus
>   archivos, para que esté disponible en cada chat nuevo. Si no usa Proyectos, que se lo
>   guarde él y lo **pegue al principio del chat** el lunes siguiente.
>
> Dilo al entregar el informe, una vez y claro. Es la diferencia entre un método y un PDF.

```markdown
# Registro de hipótesis · {{negocio}}

| Fecha | Hipótesis | Comprobación pendiente | Veredicto | Cerrada el |
|---|---|---|---|---|
| 04/08 | La caída de orgánico viene del rediseño de la home | Comparar sesiones de la home antes/después del 28/07 | Sigue abierta | — |
| 04/08 | El pico del jueves es la newsletter | Cruzar la fecha de envío con el pico de directo | Confirmada | 11/08 |
```

**Cómo se usa el lunes siguiente:** antes de mirar nada nuevo, coge las filas abiertas y
resuélvelas con los datos de esta semana. Tres consecuencias, y las tres son buenas:

1. Se ve enseguida **qué hipótesis eran humo**. Las que nunca se confirman enseñan más que
   las que aciertan.
2. Deja de repetirse el mismo hallazgo cuatro lunes seguidos.
3. Al mes y medio hay un historial de qué mueve de verdad este negocio, que es información que
   no da ninguna herramienta de analítica.

> Si el usuario no guarda el registro, el método sigue funcionando: simplemente se pierde la
> parte que más valor da con el tiempo. Díselo una vez, sin insistir más.
