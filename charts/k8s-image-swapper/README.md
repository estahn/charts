# k8s-image-swapper

![Version: 0.2.4](https://img.shields.io/badge/Version-0.2.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

Mirror images into your own registry and swap image references automatically.

**Homepage:** <https://github.com/estahn/charts/tree/main/charts/k8s-image-swapper>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| estahn | enrico.stahn@gmail.com |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| awsSecretName | string | `""` |  |
| config.dryRun | bool | `true` |  |
| config.logFormat | string | `"console"` |  |
| config.logLevel | string | `"debug"` |  |
| config.source.filters[0].jmespath | string | `"obj.metadata.namespace == 'kube-system'"` |  |
| config.target.registry.aws.accountId | int | `12345678` |  |
| config.target.registry.aws.region | string | `"ap-southeast-2"` |  |
| config.target.type | string | `"aws"` |  |
| dev.enabled | bool | `false` |  |
| dev.webhookURL | string | `"https://xxx.ngrok.io"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/estahn/k8s-image-swapper"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| patch.enabled | bool | `true` |  |
| patch.image.pullPolicy | string | `"IfNotPresent"` |  |
| patch.image.repository | string | `"jettech/kube-webhook-certgen"` |  |
| patch.image.tag | string | `"v1.5.1"` |  |
| patch.nodeSelector | object | `{}` |  |
| patch.podAnnotations | object | `{}` |  |
| patch.priorityClassName | string | `""` |  |
| patch.resources | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| podSecurityPolicy.enabled | bool | `false` |  |
| rbac.create | bool | `true` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `443` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| webhook.failurePolicy | string | `"Ignore"` |  |
