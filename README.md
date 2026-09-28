# Mysite

A static site built with [Saga](https://github.com/loopwerk/Saga), a code-first static site generator written in Swift.

## Commands

Build the site, watch for changes, and serve it on http://localhost:3000 with auto-reload:

```
$ saga dev
```

Build the site once into `deploy/`:

```
$ saga build
```

## Project structure

```
Sources/Mysite/
  main.swift        The pipeline: which content to read, and how to write it
  templates.swift   The HTML templates, written in Swift using Swim
content/
  index.md          The homepage
  articles/         Markdown articles
  static/           Files copied as-is: the stylesheet, images, ...
deploy/             The generated site
```

## How it works

Saga runs a **Reader → Processor → Writer** pipeline. Every `register` step in `main.swift` claims a folder of content, parses it into typed items, and hands those items to writers that render HTML:

- `content/articles/*.md` is read into `Item<ArticleMetadata>` values, and written to `/articles/<slug>/`, plus an index at `/articles/` and a page per tag at `/articles/tag/<tag>/`.
- Every other markdown file is written as a standalone page, so `content/index.md` becomes `/`.

Metadata comes from the YAML front matter at the top of each markdown file. Add a field to `ArticleMetadata` in `main.swift` to make it available in your templates.

Anything in `content/static/` that no step claims is copied to `deploy/` untouched.

## Learn more

- [Getting started](https://getsaga.dev/docs/gettingstarted/)
- [Guides](https://getsaga.dev/docs/guides/) — search, sitemaps, syntax highlighting, Tailwind CSS, and more