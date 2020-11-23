# scaleway-csi

Scaleway CSI drive allows you to create volumes and mount them into Kubernetes pods.

## Installation

### Prerequisites

- [Helm3](https://helm.sh/docs/intro/quickstart/#install-helm)

### Create Kubernetes Namespace

```shell
kubectl create namespace scaleway
```

### Create credentials secret

Create file

```yaml
# secret.yaml
apiVersion: v1
kind: Secret
metadata:
  name: scaleway-secret
  namespace: scaleway
type: Opaque
stringData:
  SCW_ACCESS_KEY: 'YOUR-ACCESS-KEY'
  SCW_SECRET_KEY: 'YOUR-SECRET-KEY'
  # Project ID could also be an Organization ID
  SCW_DEFAULT_PROJECT_ID: 'YOUR-PROJECT-ID'
  # The default zone where the block volumes will be created, ex: fr-par-1
  SCW_DEFAULT_ZONE: 'fr-par-1'
```

Create secret

```shell
kubectl apply -f secret.yaml
```

### Create values file

```yaml
# values.yaml
volumes:
  - name: a-block-volume
    size: '10Gi'
```

### Install the Chart

This chart installs the required components

```shell
$ helm repo add fraserdarwent-scaleway-csi https://raw.githubusercontent.com/fraserdarwent/scaleway-csi/add-helm-chart/charts
$ helm install scaleway-csi fraserdarwent-scaleway-csi/scaleway-csi --namespace scaleway --values values.yaml
```
