%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
{{ $script := resources.Get "assets/app.js" }}
@y
{{ $script := resources.Get "assets/app.js" }}
@z

@x
{{ if .Site.IsServer }}
  <script type="module" src="{{ $script.RelPermalink }}"></script>
{{ else }}
  {{ $script := $script | fingerprint }}
  <script
    type="module"
    src="{{ $script.RelPermalink }}"
    integrity="{{ $script.Data.Integrity }}"
  ></script>
{{ end }}
@y
{{ if .Site.IsServer }}
  <script type="module" src="{{ $script.RelPermalink }}"></script>
{{ else }}
  {{ $script := $script | fingerprint }}
  <script
    type="module"
    src="{{ $script.RelPermalink }}"
    integrity="{{ $script.Data.Integrity }}"
  ></script>
{{ end }}
@z
