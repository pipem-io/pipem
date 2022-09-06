{{- define "mongodb.uri" -}}
{{- if .Values.mongodb.install }}
{{- printf "mongodb://root:%s@%s-mongodb.%s.svc:27017" (required "Please set a root password" .Values.mongodb.auth.rootPassword) .Release.Name .Release.Namespace }}
{{- else }}
{{- printf "%s" (required "Please set a mongodb uri" .Values.mongodb.uri) | b64enc | quote }}
{{- end }}
{{- end }}

{{- define "pipem.license" -}}
{{- if .Values.license }}
{{- printf "%s" .Values.pipem.license }}
{{- else }}
{{- printf "<pipem><retantion>15</retantion><projects>1</projects><license>team</license><expiredate>2100-12-31</expiredate><owner>pipem.io</owner><owneremail>info@pipem.io</owneremail><Signature xmlns=\"http://www.w3.org/2000/09/xmldsig#\"><SignedInfo><CanonicalizationMethod Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\" /><SignatureMethod Algorithm=\"http://www.w3.org/2001/04/xmldsig-more#rsa-sha256\" /><Reference URI=\"\"> <Transforms> <Transform Algorithm=\"http://www.w3.org/2000/09/xmldsig#enveloped-signature\" /><Transform Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\" /></Transforms><DigestMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#sha256\" /><DigestValue>amGFXnKQ+bIKsnvTqjNP6vI4ArESTZoRM78Anpk9O6g=</DigestValue></Reference></SignedInfo><SignatureValue>IpQ0jr5xgsEe1XVNwKGIVMP6KIWbhQS0UwVZUvHTzvXn7ngFh0e4bO5myuA2wVFM3GqX+mIZVB6zpPcTzk1Zur99wFrtZHir2f3BdsjS+hxpYq6xWkPPPUCwyQgR0eplemC0zJTaLv8q5fAD2TyIxjYCVt3UJ3F99K1EjAq6JBhifS77SrFrc1hPCwb4e8cNo4WZJrQZAnFOxzA36JlFBSZS9XHEV+uw8GEK+RhAFV/0Rh6eITAeZoCrTG3WAZmuUs6qbnidzU3mo4csMfgInNuZ/CwgamIlatLowJh7xvQn14nxLAKKqKIzfXM0KmW1auyp8RqDZeBmWb+W9mhH9FQg3dAeXAkhnjXIKbhH+OaifNf04MGGvZMRmN5Lfv/dUiaNEKc82i1p5Ate7L1Sz1e3cnTGe6KIW77rMaO9M605wXfdxOmpyeq5NvCEdHbDvOP6VpcPNztARoxZwYej0wmA5KVRt+Lou3S37UQC7Ip2Yc6yBMDScZwxIxZfWMsc</SignatureValue></Signature></pipem>" -}}
{{- end }}
{{- end }}