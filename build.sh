#!/bin/sh
# Wraps body.html in the same skeleton the Claude Artifact host injects,
# so the GitHub Pages build and the artifact render identically.
#
# The theme boot script is here rather than in body.html because it has to
# run before first paint -- applying the palette after load would flash the
# wrong theme on every navigation between the index, ai-frontier and here.
{
  printf '%s\n' '<!doctype html>' '<html lang="en">' '<head>'
  printf '%s\n' '<meta charset="utf-8">'
  printf '%s\n' '<meta name="viewport" content="width=device-width, initial-scale=1">'
  printf '%s\n' '<title>Backprop to Frontier</title>'
  printf '%s\n' '<meta name="description" content="A tracked six-month curriculum from backpropagation to frontier LLM research.">'
  printf '%s\n' '<meta name="author" content="Krys Newman">'
  printf '%s\n' '<link rel="canonical" href="https://knewman23.github.io/backprop-to-frontier/">'
  # The same "k" mark the index and ai-frontier serve, inline so there is no
  # extra request and no file to keep in sync across the three repos.
  printf '%s\n' "<link rel=\"icon\" href=\"data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 32 32'%3E%3Crect width='32' height='32' rx='3' fill='%230e0f11'/%3E%3Ctext x='16' y='23' font-family='monospace' font-size='19' font-weight='700' fill='%23fff' text-anchor='middle'%3Ek%3C/text%3E%3C/svg%3E\">"
  printf '%s\n' '<link rel="preload" href="fonts/space-grotesk-var.woff2" as="font" type="font/woff2" crossorigin>'
  printf '%s\n' '<link rel="preload" href="fonts/plex-mono-400.woff2" as="font" type="font/woff2" crossorigin>'
  printf '%s\n' '<script>'
  printf '%s\n' 'try {'
  printf '%s\n' '  var t = localStorage.getItem("theme");'
  printf '%s\n' '  if (t === "dark" || t === "light") document.documentElement.dataset.theme = t;'
  printf '%s\n' '} catch (e) { /* private mode: fall through to prefers-color-scheme */ }'
  printf '%s\n' '</script>'
  printf '%s\n' '<style>body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>'
  printf '%s\n' '</head>' '<body>'
  sed "1d" body.html
  printf '%s\n' '</body>' '</html>'
} > index.html
