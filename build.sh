#!/bin/sh
# Wraps body.html in the same skeleton the Claude Artifact host injects,
# so the GitHub Pages build and the artifact render identically.
{
  printf '%s\n' '<!doctype html>' '<html lang="en">' '<head>'
  printf '%s\n' '<meta charset="utf-8">'
  printf '%s\n' '<meta name="viewport" content="width=device-width, initial-scale=1">'
  printf '%s\n' '<title>Backprop to Frontier</title>'
  printf '%s\n' '<meta name="description" content="A tracked six-month curriculum from backpropagation to frontier LLM research.">'
  printf '%s\n' '<link rel="icon" href="data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22>🧠</text></svg>">'
  printf '%s\n' '<style>:root{color-scheme:light}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%}[hidden]{display:none!important}</style>'
  printf '%s\n' '</head>' '<body>'
  sed "1d" body.html
  printf '%s\n' '</body>' '</html>'
} > index.html
