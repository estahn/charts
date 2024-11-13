# k8s-image-swapper

![Version: 1.11.0](https://img.shields.io/badge/Version-1.11.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.5.10](https://img.shields.io/badge/AppVersion-1.5.10-informational?style=flat-square)

Mirror images into your own registry and swap image references automatically.

**Homepage:** <https://github.com/estahn/charts/tree/main/charts/k8s-image-swapper>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| estahn | <enrico.stahn@gmail.com> |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| awsSecretKeys | object | `{"accessKeyID":"aws_access_key_id","secretAccessKey":"aws_secret_access_key"}` | Specify which keys to pull from the .awsSecretName secret for the associated environment variables. |
| awsSecretKeys.accessKeyID | string | `"aws_access_key_id"` | If using Hashicorp Vault Operator w/ AWS engine, use `access_key` |
| awsSecretKeys.secretAccessKey | string | `"aws_secret_access_key"` | If using Hashicorp Vault Operator w/ AWS engine, use `secret_key` |
| awsSecretName | string | `""` | If set, the secret will be used as environment variables, see awsSecretKeys. |
| cacheVolume | object | `{"emptyDir":{}}` | The type of volume to be used for caching images |
| certmanager.enabled | bool | `false` | Should cert-manager be used to issue the certificate use by the k8s-image-swapper endpoints |
| certmanager.issuerKind | string | `"Issuer"` | Whether cert-manager should use an Issuer or ClusterIssuer to issue the cert |
| certmanager.issuerName | string | `""` | If set, the name of the cert-manager issuer to use to issue the cert, otherwise a self-signed issuer will be created |
| clusterSuffix | string | `"cluster.local"` | The DNS suffix of cluster addresses |
| commonLabels | object | `{}` | Labels that will be added on all the resources (not in selectors) |
| config.dryRun | bool | `true` |  |
| config.logFormat | string | `"console"` |  |
| config.logLevel | string | `"debug"` |  |
| config.source.filters[0].jmespath | string | `"obj.metadata.namespace == 'kube-system'"` |  |
| config.target.aws.accountId | string | `"12345678"` |  |
| config.target.aws.region | string | `"ap-southeast-2"` |  |
| containerPort | int | `8443` |  |
| deployment.annotations | object | `{}` |  |
| deployment.priorityClassName | string | `""` |  |
| dev.enabled | bool | `false` |  |
| dev.webhookURL | string | `"https://xxx.ngrok.io"` |  |
| extraEnv | list | `[]` | Additional environment variables to be defined on the container Follows the same syntax as containers.env in a Pod v1 API |
| extraManifests | list | `[]` | Additional manifests to be deployed Can be either a full object OR a string containing valid YAML |
| extraManifestsTemplated | list | `[]` | Additional manifests to be deployed. These will be passed through the templating engine Useful if you need to use values from this chart in your manifests |
| fullnameOverride | string | `""` |  |
| hostNetwork | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/estahn/k8s-image-swapper"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| kubeVersionOverride | string | `""` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| patch.enabled | bool | `true` |  |
| patch.image.pullPolicy | string | `"IfNotPresent"` |  |
| patch.image.repository | string | `"k8s.gcr.io/ingress-nginx/kube-webhook-certgen"` |  |
| patch.image.tag | string | `"v1.3.0"` |  |
| patch.nodeSelector | object | `{}` |  |
| patch.podAnnotations | object | `{}` |  |
| patch.priorityClassName | string | `""` |  |
| patch.resources | object | `{}` |  |
| pdb.enabled | bool | `false` |  |
| pdb.minAvailable | string | `"1"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| podSecurityPolicy.enabled | bool | `false` |  |
| rbac.create | bool | `true` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| secretReader.enabled | bool | `false` |  |
| secretReader.secretNames | list | `[]` |  |
| securityContext | object | `{}` |  |
| service.port | int | `443` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| test.affinity | object | `{}` | Set affinity for the test pod |
| test.enabled | bool | `true` | Should the test be included with the release |
| test.image | string | `"busybox"` | The image to use for running the test |
| test.nodeSelector | object | `{}` | Set a node selector for the test pod |
| test.tolerations | list | `[]` | Set tolerations for the test pod |
| tolerations | list | `[]` |  |
| webhook.failurePolicy | string | `"Ignore"` |  |
| webhook.namespaceSelector | object | `{}` |  |
| webhook.objectSelector | object | `{}` |  |
| webhook.reinvocationPolicy | string | `"Never"` |  |
| webhook.timeoutSeconds | int | `10` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
