{{- define "mongodb.uri" -}}
{{- if .Values.mongodb.install }}
{{- printf "mongodb://root:%s@%s-mongodb.%s.svc:27017" (required "Please set a root password" .Values.mongodb.auth.rootPassword) .Release.Name .Release.Namespace }}
{{- else }}
{{- printf "%s" (required "Please set a mongodb uri" .Values.mongodb.uri) }}
{{- end }}
{{- end }}