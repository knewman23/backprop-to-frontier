# Backprop to Frontier

A tracked six-month self-study curriculum from backpropagation to frontier LLM
research. Every stage links to a real course with public materials.

**Live:** https://knewman23.github.io/backprop-to-frontier/

Progress is stored in `localStorage`, so it persists per browser and never
leaves the machine.

## Editing

`body.html` is the source. `index.html` is generated — do not edit it directly.

```sh
./build.sh   # wraps body.html in the page skeleton -> index.html
```

## Theming

The colour tokens, the dark band, the breadcrumbs and the theme toggle are
lifted from [knewman23.github.io](https://github.com/knewman23/knewman23.github.io)
so the index, [ai-frontier](https://github.com/knewman23/ai-frontier) and this
page are one system. Every colour is a token on `:root`, overridden in exactly
three places — `[data-theme="dark"]`, the `prefers-color-scheme` block, and
nowhere else.

All three sites share the `theme` localStorage key on the same origin, so a
light/dark choice made on any of them carries to the others. `fonts/` holds the
same Space Grotesk and IBM Plex Mono files the index serves.
