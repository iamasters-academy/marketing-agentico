# El entregable — el mismo para las nueve skills

> Este fichero se copia dentro de `references/` de cada skill del kit.

Toda skill termina igual: **un HTML con los colores de su marca** que el usuario se guarda,
se enseña a su socio y abre dentro de tres meses para ver qué decidió y por qué.

No es decoración. Es lo que hace que el trabajo de la sesión no se pierda en el scroll de un
chat.

---

## Cuándo se genera

Al final, **después** de haber enseñado las conclusiones en el chat y de que el usuario las
haya confirmado. Nunca antes: si generas el HTML con algo a medias, luego hay que rehacerlo.

Anúncialo en una línea y hazlo:

> "Te lo dejo en un HTML con tus colores para que puedas enseñarlo. Un momento."

---

## De dónde salen los colores

Por este orden, y **sin preguntar mientras haya opción de averiguarlo**:

1. **Del perfil.** Si `perfil-marca.md` trae la sección `## Mi identidad visual`, úsala. Fin.
2. **De su web.** Con Firecrawl: `firecrawl_scrape` con `formats: ["branding"]`. Sin
   Firecrawl: lee la web y saca los colores dominantes del CSS o de lo que se ve.
3. **Preguntando, y solo dos cosas:** *"¿Cuáles son tus dos colores de marca? Dímelos como
   quieras: código, nombre, o 'como el azul de mi logo'."*
4. **Por defecto**, si no tiene marca todavía: la paleta neutra de abajo. No lo conviertas
   en un problema.

Cuando los saques de la web, **guárdalos en el perfil** para que ninguna otra skill vuelva
a buscarlos:

```markdown
## Mi identidad visual
- **Color principal:** #B4461F
- **Color secundario:** #1F5F8B
- **Fondo:** claro
- **Tipografía:** sans-serif de sistema
- **Logo:** {URL o ruta, si lo hay}
```

---

## Reglas del HTML

1. **Un solo fichero, sin nada fuera.** Ni CDNs, ni tipografías de Google, ni imágenes
   remotas, ni `fetch`. Todo el CSS va dentro de un `<style>`. Tiene que abrirse con doble
   clic, sin internet, dentro de un año.
2. **Que se lea en el móvil.** Es donde lo va a abrir para enseñárselo a alguien.
3. **Que se imprima bien.** Mucha gente lo va a pasar a PDF para mandarlo. Incluye el
   bloque `@media print`.
4. **Sus colores, con criterio.** El color de marca va en acentos, títulos y datos
   destacados. **Nunca** como fondo de párrafos largos: si su color corporativo es un rojo
   intenso, el texto va en gris oscuro sobre blanco y el rojo se usa a cucharadas.
5. **Contraste suficiente.** Si su color de marca es muy claro, oscurécelo para el texto y
   deja el original para los fondos de acento.
6. **Cero relleno.** Nada de "en un mundo cada vez más digital". Si una sección no tiene
   contenido real, se quita.

---

## Qué lleva dentro, siempre

En este orden:

| Bloque | Qué es |
|---|---|
| **Cabecera** | Nombre de la marca, qué skill lo generó, fecha |
| **Lo que hay que saber** | 3-5 frases. Si solo lee esto, que se entere de lo importante |
| **El contenido de la skill** | Lo que produce cada una: ángulos, objeciones, correos, la persona… |
| **Diario de investigación** | Qué se buscó, dónde, qué salió y **qué no se encontró** |
| **Lo que esto no dice** | Los límites, en claro. Es lo que separa un informe de un folleto |
| **🔍 Test de la mentira** | Cómo comprobar que no te han mentido, con los pasos concretos |
| **Siguiente paso** | Una acción, no cinco |
| **Pie** | Kit Marketing Agéntico · fecha · aviso de qué está verificado y qué no |

El **diario de investigación** es el bloque que más impresiona y el que más se olvida.
Ahí es donde el usuario ve las quince búsquedas, las nueve webs leídas y los cuatro
callejones sin salida. Es el trabajo hecho visible.

---

## El esqueleto

Copia esto y rellénalo. Sustituye `{{...}}` por lo que toque.

```html
<!doctype html><html lang="es"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>{{Skill}} — {{Marca}}</title>
<style>
:root{
  --marca:{{#COLOR PRINCIPAL}};
  --marca2:{{#COLOR SECUNDARIO}};
  --tinta:#1b1a18; --suave:#6c6862; --linea:#e6e2db; --fondo:#fbfaf8; --tarjeta:#fff;
  --acento-suave:color-mix(in srgb,var(--marca) 8%,#fff);
}
@media (prefers-color-scheme:dark){:root{
  --tinta:#eae7e1; --suave:#9c978e; --linea:#302d29; --fondo:#141312; --tarjeta:#1c1b19;
  --acento-suave:color-mix(in srgb,var(--marca) 18%,#141312);}}
*{box-sizing:border-box}
body{margin:0;background:var(--fondo);color:var(--tinta);
 font:16.5px/1.65 -apple-system,BlinkMacSystemFont,"Segoe UI",system-ui,sans-serif;
 -webkit-font-smoothing:antialiased}
.wrap{max-width:820px;margin:0 auto;padding:48px 24px 100px}
header{border-bottom:3px solid var(--marca);padding-bottom:20px;margin-bottom:34px}
.marca{font-size:13px;letter-spacing:.1em;text-transform:uppercase;color:var(--marca);font-weight:700}
h1{font-size:2.15em;line-height:1.15;letter-spacing:-.02em;margin:.25em 0 .2em}
.fecha{color:var(--suave);font-size:14px}
h2{font-size:1.4em;margin:2.4em 0 .7em;letter-spacing:-.01em;
 padding-bottom:.3em;border-bottom:1px solid var(--linea)}
h3{font-size:1.1em;margin:1.8em 0 .5em}
p{margin:0 0 1.05em}
a{color:var(--marca)}
/* resumen de arriba */
.clave{background:var(--acento-suave);border-left:4px solid var(--marca);
 padding:20px 24px;border-radius:0 12px 12px 0;margin:0 0 2em}
.clave p:last-child{margin-bottom:0}
/* tarjetas de dato */
.datos{display:flex;gap:12px;flex-wrap:wrap;margin:1.6em 0}
.dato{background:var(--tarjeta);border:1px solid var(--linea);border-radius:12px;
 padding:16px 20px;min-width:130px;flex:1}
.dato b{display:block;font-size:1.8em;line-height:1.1;color:var(--marca);letter-spacing:-.02em}
.dato span{font-size:12.5px;color:var(--suave)}
/* cita con fuente */
.cita{background:var(--tarjeta);border:1px solid var(--linea);border-left:3px solid var(--marca2);
 padding:16px 20px;border-radius:0 10px 10px 0;margin:1.2em 0}
.cita q{font-style:italic}
.fuente{display:block;margin-top:8px;font-size:13px;color:var(--suave)}
/* semaforo */
.tag{display:inline-block;padding:2px 10px;border-radius:99px;font-size:12px;font-weight:600}
.tag.si{background:#dff2e3;color:#1d6b33}
.tag.no{background:#fbe3e0;color:#992a1c}
.tag.duda{background:#fdf0d8;color:#8a5b00}
@media (prefers-color-scheme:dark){
 .tag.si{background:#1c3323;color:#83d99a}
 .tag.no{background:#3a1f1b;color:#e89b8e}
 .tag.duda{background:#3a2e12;color:#e6bf62}}
table{border-collapse:collapse;width:100%;margin:1.2em 0;font-size:14.5px;
 display:block;overflow-x:auto}
th,td{border:1px solid var(--linea);padding:9px 12px;text-align:left;vertical-align:top}
th{background:var(--acento-suave);font-weight:600}
/* diario */
.diario{font-size:14.5px}
.diario td:first-child{white-space:nowrap;color:var(--suave)}
/* limites y test */
.limites{background:var(--tarjeta);border:1px dashed var(--linea);border-radius:12px;padding:18px 22px}
.test{background:var(--acento-suave);border-radius:12px;padding:20px 24px;margin:2em 0}
.test h2{border:0;margin-top:0}
footer{margin-top:56px;padding-top:20px;border-top:1px solid var(--linea);
 font-size:13px;color:var(--suave)}
ul,ol{padding-left:1.35em}li{margin:.35em 0}
@media (max-width:600px){.wrap{padding:28px 16px 70px}h1{font-size:1.7em}}
@media print{
 body{background:#fff;color:#000}
 .wrap{max-width:100%;padding:0}
 h2{break-after:avoid}.dato,.cita,.test{break-inside:avoid}
 a{color:#000;text-decoration:underline}
 a[href^="http"]::after{content:" (" attr(href) ")";font-size:11px;color:#555}}
</style></head><body><div class="wrap">

<header>
  <div class="marca">{{MARCA}}</div>
  <h1>{{Título de lo que se ha hecho}}</h1>
  <div class="fecha">{{skill que lo generó}} · {{fecha larga}}</div>
</header>

<div class="clave">
  <strong>Lo que hay que saber.</strong>
  {{3-5 frases. Lo importante, sin rodeos.}}
</div>

{{EL CONTENIDO DE LA SKILL}}

<h2>Cómo se ha investigado esto</h2>
<table class="diario">
<thead><tr><th>Qué se buscó</th><th>Dónde</th><th>Qué salió</th></tr></thead>
<tbody>
{{<tr><td>…</td><td>…</td><td>…</td></tr> por cada búsqueda, incluidas las que no dieron nada}}
</tbody></table>

<h2>Lo que este documento NO dice</h2>
<div class="limites">{{los límites, en lista}}</div>

<div class="test">
<h2>🔍 Test de la mentira</h2>
{{los pasos concretos para comprobarlo, y qué es lo que este test NO comprueba}}
</div>

<h2>Siguiente paso</h2>
<p>{{una sola acción, concreta, con fecha si aplica}}</p>

<footer>
  Kit <strong>Marketing Agéntico</strong> · IA Masters Academy ·
  generado el {{fecha}} con <code>{{/skill}}</code>.<br>
  {{Aviso de procedencia: qué está verificado en fuente y qué es estimación o hipótesis.}}
</footer>

</div></body></html>
```

**Paleta por defecto**, si no tiene marca: `--marca:#B4461F` · `--marca2:#1F5F8B`.

---

## Dónde se guarda

**En Claude Code o Cowork** — escríbelo como fichero y dile la ruta:

> "Lo tienes en `marketing/el-hueco-2026-08-11.html`. Ábrelo con doble clic."

Nombre: `{skill}-{AAAA-MM-DD}.html`, dentro de una carpeta `marketing/`. Con la fecha, para
que dentro de tres meses pueda comparar el de entonces con el de ahora.

**En Claude.ai** — genera el fichero con la herramienta de creación de archivos para que se
lo pueda descargar. Si no está disponible, dale el HTML en un bloque de código con esta
instrucción:

> "Copia todo esto, pégalo en un archivo de texto y guárdalo con extensión `.html`. Al
> hacer doble clic se abre en tu navegador."

---

## Lo que no se hace

- **No metas datos inventados sin marcarlos.** Si una cifra es estimación, ponlo al lado.
  Un HTML bonito da una autoridad que el contenido a veces no se ha ganado — y ese es
  justo el riesgo de este formato.
- **No infles.** Cinco secciones con contenido real valen más que doce con relleno.
- **No lo generes si la sesión se quedó a medias.** Dilo: *"esto ha quedado incompleto, lo
  cerramos cuando tengas X"*. Un entregable a medias parece completo, y eso engaña.
