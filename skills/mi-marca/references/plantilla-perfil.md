# Plantilla del perfil

Genera el documento exactamente con esta estructura. Rellena `{{...}}` con lo que salió de
la entrevista. Si algo quedó sin responder, escribe `PENDIENTE` — no te lo inventes.

**El fichero se llama `perfil-marca.md`.** Sin fecha, sin número, sin prefijo. Las otras
ocho skills lo buscan con ese nombre exacto.

---

```markdown
# Perfil de marca — {{nombre del negocio}}

> Creado con /mi-marca · kit Marketing Agéntico
> Última actualización: {{fecha}}

## En una frase
{{qué vende, en lenguaje de persona normal}}

## Mi cliente
- **Quién es:** {{descripción}}
- **Qué le duele:** {{el problema, con sus palabras si las dio}}
- **Cómo me busca:** {{qué escribiría en Google o le preguntaría a una IA}}

## Mi competencia
| Competidor | Web | Por qué compite conmigo | Comprobado |
|---|---|---|---|
| {{nombre 1}} | {{url}} | {{motivo}} | {{✅ abrí su web / ⚠️ sin comprobar}} |
| {{nombre 2}} | {{url}} | {{motivo}} | {{…}} |
| {{nombre 3}} | {{url}} | {{motivo}} | {{…}} |

{{si alguno quedó sin comprobar:}}
> ⚠️ Los marcados sin comprobar son una propuesta a partir de una búsqueda.
> Ábrelos antes de tomar decisiones con ellos.

## Mi voz
- **Trato:** {{tú / usted}}
- **Tono:** {{descripción corta}}
- **Tics propios:** {{estructuras que repite, citadas de su web si las leíste}}
- **Palabras que nunca uso:** {{lista}}
- **Referencia:** {{si mencionó a alguien que le gusta cómo comunica}}

## Mi identidad visual
- **Color principal:** {{#hex}}
- **Color secundario:** {{#hex}}
- **Tipografía:** {{la de su web, o "sans-serif de sistema"}}
- **Logo:** {{url o ruta, si lo hay}}
- **De dónde sale:** {{leído de su web / me los dijo / paleta por defecto}}

> Esto lo usan las nueve skills para generar los entregables con sus colores.

## Dónde vivo
- **Web:** {{url o "no tengo"}}
- **Redes activas:** {{solo las que usa de verdad}}
- **Lista de correo:** {{sí/no, herramienta y tamaño aproximado}}
- **CRM o herramientas:** {{cuáles}}
- **Analítica:** {{GA4 / otra / ninguna}} — {{¿administra él la cuenta o la lleva un tercero?}}

## Lo que mi web NO tiene
{{lista de ausencias detectadas al leerla: precios, casos con cifras, testimonios con
nombre, blog, sectores concretos… o "no la he leído"}}

> Esto no es un reproche: es materia prima para `/abogado-del-diablo` y `/el-hueco`.

## Mi objetivo a 90 días
{{lo que quiere que cambie, con el número que va a mirar}}

**Diagnóstico:** mi problema principal ahora mismo es que **{{no me conocen / no me
entienden / no me compran}}**.
**En qué me baso:** {{las señales concretas, no la intuición}}
{{si no había datos:}} > ⚠️ Hipótesis, no diagnóstico: no había números para sostenerlo.

**Por dónde empezar:** {{las 2-3 skills que le tocan según la tabla del bloque 6}}

## Correcciones
{{Vacío al crear el perfil. Aquí escriben las demás skills lo que descubran que
contradiga algo de arriba. Formato: "- **fecha · /skill:** qué se descubrió".}}

## Pendientes
{{lista de lo que quedó sin responder, o "ninguno"}}
```

---

## Después de generarlo

1. **Enséñaselo completo** y pide confirmación.
2. **Guárdalo como `perfil-marca.md`.**
   - Claude Code / Cowork → escríbelo en la carpeta de trabajo y di la ruta.
   - Claude.ai → que cree un Proyecto llamado *Mi marketing* y lo pegue en las instrucciones.
     A partir de ahí trabaja siempre dentro de ese proyecto.
3. **Genera el entregable HTML** siguiendo `_entregable.md`, ya con sus colores. Es el
   primer momento en que ve el kit funcionando: no te lo saltes.
4. **Encadena con `/mi-voz`**, que es la otra mitad de la puesta a punto:

   > "Ya tienes tu perfil. Nos queda una cosa para terminar la puesta a punto: `/mi-voz`,
   > que saca cómo escribes de verdad a partir de tus propios textos. Con eso hecho, todo
   > lo que produzca el kit sonará a ti y no a IA. Sacar el manual de voz son unos veinte
   > minutos; si además quieres que te escriba piezas hoy, cuenta una hora. ¿Seguimos?"

   Si dice que no, no insistas: dile que puede hacerlo cuando quiera y que hasta entonces
   las skills de contenido usarán solo el tono declarado en el perfil.
