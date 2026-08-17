# El panel interactivo

> Esta skill entrega **dos cosas en un solo fichero**, y hay que entregar las dos:
>
> 1. **Un panel** con filtros, donde el usuario ve todos sus datos de un golpe y los corta como
>    quiera. Es lo que la gente llama «un dashboard tipo Power BI».
> 2. **El análisis**: tres cambios, hipótesis, qué lo tumbaría, y qué NO es noticia.
>
> **Un panel sin análisis es un gráfico bonito. Un análisis sin panel es un PDF que nadie
> explora.** Van juntos, en dos pestañas del mismo HTML.

---

## Cuándo se monta el panel

Solo cuando tengas **el dato fila a fila**: un CSV de leads, pedidos o contactos, con una fila
por registro y varias columnas para cortar.

**Si solo tienes dos capturas de Analytics con totales, no hay panel que montar.** Hay informe, y
punto — dilo así en lugar de fingir un dashboard con cuatro cifras. Y aprovecha para explicar por
qué el fichero completo da más: con él se pueden aplicar los cuatro filtros de ruido, y con dos
capturas solo dos.

---

## Lo que lleva el panel, en este orden

| Bloque | Qué es |
|---|---|
| **Barra de filtros** | Periodo + una fila de botones por cada dimensión del fichero (centro, canal, dispositivo, producto…). Multi-selección: puede marcar dos canales a la vez |
| **Contador de selección** | *«180 de 605 solicitudes seleccionadas · filtrando por Madrid + Orgánico»*. **Imprescindible**: sin esto el usuario se pierde y no sabe qué está mirando |
| **Fila de KPIs** | 5-8 tarjetas que **se recalculan** al filtrar, cada una con su variación frente al periodo anterior. Volumen, conversiones, dinero, tasas y coste |
| **Serie temporal** | Barras por semana, y una línea encima con el dinero. Las semanas del periodo activo en color, el resto en gris: así se ve el contexto sin perder el foco |
| **Barras por dimensión** | Un panel pequeño por dimensión. **Y clicables**: pulsar una barra filtra por ella. Eso es lo que convierte un gráfico en un panel |
| **Embudo** | Los estados en cascada, con el porcentaje sobre el total seleccionado. Se recalcula también |
| **Tabla cruzada** | El cruce que más importe (canal × delegación, campaña × producto) ordenado por dinero, con fila de totales |

### Las tres reglas del panel

1. **Todo se recalcula con los filtros.** Si un número no responde al filtro, el usuario deja de
   confiar en el panel entero.
2. **Las barras filtran al pulsarlas.** Es lo que la gente espera de un dashboard y lo que hace
   que se quede explorando.
3. **Un solo fichero, cero dependencias.** Nada de librerías de gráficos: barras con `div` y
   `width` en porcentaje, series con `<svg>` generado a mano. Tiene que abrirse con doble clic
   dentro de un año, sin internet.

---

## La receta técnica

**Los datos van dentro del HTML**, no en un fichero aparte. Para que no pese:

```js
// catálogos + filas como arrays de índices, no objetos con claves repetidas
const CFG   = {canal:["organico","meta_ads",…], centro:["Madrid",…], …};
const DATOS = [[0,1,2,0,0,5,0,15.9,4200], …];   // 605 filas ≈ 25 KB
```

Con 600 filas el HTML queda en unos 50 KB. **Por encima de unas 5.000 filas, agrega antes**: pasa
a totales por día × dimensión y el panel sigue funcionando igual de fino.

**El motor son cuatro funciones y nada más:**

```js
filtra(rango, salvo)  // aplica los filtros activos; "salvo" excluye una dimensión
                      // para que sus propias barras no se filtren a sí mismas
met(rows)             // calcula todas las métricas de un conjunto de filas
delta(a, b, inv)      // variación contra el periodo anterior; inv=true si subir es malo
render()              // repinta todo. Se llama en cada clic. Punto
```

**El detalle que casi todo el mundo hace mal:** al pintar las barras de una dimensión, hay que
excluir esa dimensión de los filtros (`salvo`). Si no, al pulsar «Madrid» las barras de centro se
quedan con una sola barra y el usuario no puede cambiar de centro sin limpiar antes.

**Formato español, siempre:** `toLocaleString('es-ES')`. Coma decimal y punto de millar —
`26,13 €` y `2.880 €`. Con `toFixed()` sale `26.13` y eso, proyectado en una reunión, chirría.

---

## La segunda pestaña: el análisis

**No la quites nunca.** El panel enseña *qué* ha pasado; esta pestaña dice *por qué*, y sobre todo
**qué se ha movido y no es noticia** — que es la parte que ningún dashboard te da.

Va con la advertencia arriba, para que nadie se líe:

> "Los números de esta pestaña son del periodo completo sin filtros. Si estás filtrando en el
> panel, las conclusiones de aquí no cambian: son del análisis que hicimos con todo."

Su contenido es el de `references/plantilla-informe.md`: las tres cosas, hipótesis aburrida
primero, qué la tumbaría, la tabla de lo que no es noticia, los límites, el registro de hipótesis
con fechas y el test de la mentira.

---

## Y dilo en voz alta al entregarlo

Porque el usuario va a abrir el panel y quedarse ahí:

> "Tienes dos pestañas. En la primera puedes cortar tus datos como quieras: pulsa Madrid, pulsa
> Orgánico y verás las 18 solicitudes que quedan. En la segunda está lo que yo he sacado de todo
> esto, con lo que hay que comprobar mañana.
>
> **La primera es para explorar. La segunda es para decidir.**"

---

## Lo que no se hace

- **No montes un panel con cuatro números sueltos.** Si no hay fichero fila a fila, no hay panel.
- **No inventes dimensiones que no estén en los datos.** Si el CSV no trae dispositivo, no hay
  panel por dispositivo.
- **No pongas cuarenta métricas porque quepan.** Los KPIs son los que el negocio mira: volumen,
  conversión, dinero y coste. El resto va en las barras, no arriba.
- **No dejes el panel sin el contador de selección.** Un filtro activo que no se ve es la forma
  más rápida de que alguien saque una conclusión falsa de sus propios datos.
