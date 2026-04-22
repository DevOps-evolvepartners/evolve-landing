## Sesión 22 Abril 2026

### Landing page evolvefichaje.com
- Completada y desplegada en producción
- HTML puro + Tailwind CDN + css/shared.css + css/landing.css
- Deploy via ./deploy.sh (rsync al VPS)
- Caddyfile actualizado con bloque evolvefichaje.com
- Volumen /srv/apps/evolve-landing montado en docker-compose de Caddy
- DNS: registro A @ → 72.61.103.106, CNAME www → evolvefichaje.com
- Favicon: assets/site-icon.svg
- Logos: assets/logo-fichaje.svg, assets/logo-evolve.svg
- Email ofuscado via JS para evitar spam bots

### Secciones de la landing (orden actual)
1. NAV sticky
2. HERO con dashboard card mock
3. STATS
4. PROPUESTA DE VALOR
5. CARACTERÍSTICAS
6. CUMPLIMIENTO LEGAL
7. PRECIOS
8. FAQ (accordion funcional)
9. TESTIMONIOS
10. CTA FINAL
11. FOOTER

### Evolve Fichaje — Frontend restyling iniciado
- React 18 + Vite + Tailwind v4
- Design tokens definidos en src/index.css con @theme
- Paleta migrada de azul genérico a dorado Evolve (#c7a76c)
- LoginPage.jsx restyled — pendiente logo
- Logos copiados a frontend/public/
- Pendiente: resolver acceso multitenant para poder ver pantallas internas

### Problemas pendientes
- Celery y Celery-beat crashean: ModuleNotFoundError: No module named 'requests' en whatsapp/tasks.py — falta añadir requests a requirements
- Error 500 al eliminar objetos en Django admin — no aparece en logs, investigar en local
- Acceso multitenant: necesita crear Empresa + Domain + Empleado en tenant correcto para poder hacer login en app.evolvefichaje.com
- Logs de Django en producción no capturan errores 500 — configurar logging en settings/production.py
