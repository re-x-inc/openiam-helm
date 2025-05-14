{{- define "imagePullSecret" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.openiam.image.credentials.registry (printf "%s:%s" .Values.openiam.image.credentials.username .Values.openiam.image.credentials.password | b64enc) | b64enc }}
{{- end }}
