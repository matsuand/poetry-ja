%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
{{ $style := resources.Get "assets/app.css" }}
@y
{{ $style := resources.Get "assets/app.css" }}
@z

@x
{{ if .Site.IsServer }}
  <link rel="stylesheet" href="{{ $style.RelPermalink }}" />
{{ else }}
  {{ $style := $style | fingerprint }}
  <link
    rel="stylesheet"
    href="{{ $style.RelPermalink }}"
    integrity="{{ $style.Data.Integrity }}"
  />
{{ end }}
@y
{{ if .Site.IsServer }}
  <link rel="stylesheet" href="{{ $style.RelPermalink }}" />
{{ else }}
  {{ $style := $style | fingerprint }}
  <link
    rel="stylesheet"
    href="{{ $style.RelPermalink }}"
    integrity="{{ $style.Data.Integrity }}"
  />
{{ end }}
@z
