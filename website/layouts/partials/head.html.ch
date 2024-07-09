%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
<head>
  <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
  <meta charset="utf-8" />
  {{ if .Title }}
    {{ if eq .Page.Type "docs" }}
      <title>
        {{ delimit (slice .Title "Documentation" .Site.Title) " | " }}
      </title>
    {{ else if (or (eq .Page.Type "blog") (eq .Page.Type "categories") (eq .Page.Type "tags")) }}
      <title>{{ delimit (slice .Title "Blog" .Site.Title) " | " }}</title>
    {{ else }}
      <title>{{ delimit (slice .Title .Site.Title) " | " }}</title>
    {{ end }}
  {{ else }}
    <title>{{ .Site.Title }}</title>
  {{ end }}
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="icon" type="image/png" href="/images/favicon-origami-32.png" />
  <meta name="apple-mobile-web-app-capable" content="yes" />
  <meta name="apple-touch-fullscreen" content="yes" />
  <meta name="apple-mobile-web-app-status-bar-style" content="default" />
  <meta
    content="{{ cond (gt (len .Summary) 0) .Summary .Site.Params.description }}"
    name="description"
  />
  <link rel="canonical" href="{{ .Permalink }}" />
  {{ with .OutputFormats.Get "rss" -}}
    {{ printf `
      <link rel="%s" type="%s" href="%s" title="%s" />` .Rel .MediaType.Type .Permalink $.Site.Title | safeHTML
    }}
  {{ end -}}
  <script
    defer
    data-domain="python-poetry.org"
    src="https://plausible.io/js/plausible.js"
  ></script>
  {{- partial "stylesheets.html" . -}}
</head>
@y
<head>
  <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
  <meta charset="utf-8" />
  {{ if .Title }}
    {{ if eq .Page.Type "docs" }}
      <title>
        {{ delimit (slice .Title "Documentation" .Site.Title) " | " }}
      </title>
    {{ else if (or (eq .Page.Type "blog") (eq .Page.Type "categories") (eq .Page.Type "tags")) }}
      <title>{{ delimit (slice .Title "Blog" .Site.Title) " | " }}</title>
    {{ else }}
      <title>{{ delimit (slice .Title .Site.Title) " | " }}</title>
    {{ end }}
  {{ else }}
    <title>{{ .Site.Title }}</title>
  {{ end }}
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="icon" type="image/png" href="/images/favicon-origami-32.png" />
  <meta name="apple-mobile-web-app-capable" content="yes" />
  <meta name="apple-touch-fullscreen" content="yes" />
  <meta name="apple-mobile-web-app-status-bar-style" content="default" />
  <meta
    content="{{ cond (gt (len .Summary) 0) .Summary .Site.Params.description }}"
    name="description"
  />
  <link rel="canonical" href="{{ .Permalink }}" />
  {{ with .OutputFormats.Get "rss" -}}
    {{ printf `
      <link rel="%s" type="%s" href="%s" title="%s" />` .Rel .MediaType.Type .Permalink $.Site.Title | safeHTML
    }}
  {{ end -}}
  <script
    defer
    data-domain="python-poetry.org"
    src="https://plausible.io/js/plausible.js"
  ></script>
  {{- partial "stylesheets.html" . -}}
</head>
@z
