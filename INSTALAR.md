# Instrucciones de instalación

> **Si eres una persona:** no necesitas leer esto. Vuelve al [README](README.md) y sigue la
> vía que te corresponda. Este fichero está escrito para que **Claude lo lea y lo ejecute**
> cuando le pases la dirección de este repositorio.

---

## Si eres Claude y te acaban de pasar este repositorio

El usuario quiere instalar el kit **Marketing Agéntico** (9 skills de marketing). Instálalas
sin pedirle que haga nada por su cuenta más allá de confirmarte que adelante.

### 1. Averigua dónde estás

- **¿Tienes acceso a la terminal y a `~/.claude/skills/`?** → eres Claude Code o Cowork.
  Sigue el punto 2. Al terminar, las skills se podrán llamar escribiendo `/nombre`.
- **¿No tienes sistema de ficheros?** → estás en Claude.ai. Ahí **no puedes instalar tú**:
  la subida la tiene que hacer la persona a mano. Salta al punto 4 y guíala.

### 2. Instalación en Claude Code o Cowork

```bash
git clone https://github.com/iamasters-academy/marketing-agentico.git /tmp/marketing-agentico
mkdir -p ~/.claude/skills
cp -R /tmp/marketing-agentico/skills/* ~/.claude/skills/
```

Si el usuario prefiere no clonar el repositorio entero, descarga solo lo necesario. Y si ya
tiene alguna de estas skills instalada, **pregúntale antes de sobrescribirla** — puede
haberla modificado a su gusto, que es justo lo que este kit anima a hacer.

### 3. Comprueba que ha funcionado

Lista lo que ha quedado instalado y díselo con los nombres, no con rutas:

```bash
ls -1 ~/.claude/skills/ | grep -E "mi-marca|el-hueco|cliente-vivo|abogado-del-diablo|analista-lunes|mi-voz|de-cero-a-lead|me-recomienda-la-ia|email-que-piensa"
```

Deben aparecer las nueve. Luego dile exactamente esto:

> "Listo, tienes las nueve instaladas. Reinicia Claude Code para que las vea y empieza por
> `/mi-marca`: son cinco minutos de entrevista y a partir de ahí las otras ocho trabajan con
> tu negocio en vez de con ejemplos genéricos."

### 4. Si la persona está en Claude.ai

No puedes instalarlas tú. Guíala paso a paso, sin dar nada por sabido:

1. Que active **Ajustes → Capacidades → Ejecución de código y creación de archivos**. Sin
   esto no le aparecerá la opción de skills, y es el paso que más gente se salta.
2. Que descargue los ficheros de `instalar/zip/` de este repositorio (uno por skill).
3. Que vaya a **Personalizar → Skills → `+` → Crear skill → Subir** y arrastre el `.zip`.
   Van de una en una.
4. Avísale de que **en Claude.ai no hay comandos con barra**: las skills se activan solas
   cuando lo que pide encaja, o nombrándolas ("usa la skill mi-marca").

Recomiéndale empezar por `mi-marca` y añadir el resto según las vaya necesitando: no tiene
sentido subir nueve de golpe el primer día.

---

## Las nueve skills

| Skill | Qué hace |
|---|---|
| `mi-marca` | Entrevista de 5 min que crea el perfil que leen las otras ocho. **Primera siempre** |
| `el-hueco` | Cruza lo que promete la competencia con las quejas de sus clientes |
| `cliente-vivo` | Un cliente con el que puedes hablar, hecho de evidencia real |
| `abogado-del-diablo` | Ataca tu propuesta de valor antes de que lo haga el mercado |
| `analista-lunes` | Las tres cosas que han cambiado en tus datos, con hipótesis de causa |
| `mi-voz` | Extrae tu voz real y produce contenido que suena a ti |
| `de-cero-a-lead` | Landing, formulario, hoja y email de bienvenida, funcionando |
| `me-recomienda-la-ia` | Mide si ChatGPT, Perplexity y Gemini te nombran, y el plan para que lo hagan |
| `email-que-piensa` | Nurturing que decide qué hacer con cada lead, incluido no escribirle |

---

## Actualizar el kit más adelante

Este campo se mueve rápido y el kit se corrige. Para ponerse al día, repetir el punto 2
(el `cp -R` sobrescribe con la versión nueva). Antes de hacerlo, **avisa de que se van a
perder los cambios locales** si la persona ha retocado alguna skill, y ofrécele copiarlas
aparte primero.

---

<sub>Kit Marketing Agéntico · IA Masters Academy · Ángel Aparicio</sub>
