# scaleway-csi

Scaleway CSI drive allows you to create volumes and mount them into Kubernetes pods.

## Installation

### Prerequisites

- [Helm3](https://helm.sh/docs/intro/quickstart/#install-helm)

### Installing the Chart

- This chart installs the required components

```shell
$ helm repo add fraserdarwent-scaleway-csi https://raw.githubusercontent.com/fraserdarwent/scaleway-csi/add-helm-chart/charts
$ helm install fraserdarwent-scaleway-csi/scaleway-csi
```
