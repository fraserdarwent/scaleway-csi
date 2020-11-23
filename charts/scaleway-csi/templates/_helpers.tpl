{{- define "labels" }}
helm.sh/chart: {{ $.Chart.Name }}-{{ $.Chart.Version | replace "+" "_" }}
helm.sh/chart-name: {{ $.Chart.Name }}
helm.sh/chart-version: {{ $.Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ $.Release.Service }}
{{- end }}
