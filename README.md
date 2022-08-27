# Pipem.io - Configuration

# Requirements

- kubernetes cluster
- mongodb
- helm client

Tips: we use mongodb cloud atlas free tier.

# Before install

You must to set this values:

- set the mongodb uri in the values.yaml file
- app.domain
- api.domain
- api.baseUrl

# Install

```
helm repo add pipem https://charts.pipem.io
helm repo update

helm upgrade pipem pipem/pipem -f values.yaml --namespace pipem -i
helm upgrade app pipem/app --namespace pipem -i
helm upgrade api pipem/api --namespace pipem -i
helm upgrade nats-producer pipem/nats-producer --namespace pipem -i

```

# Providers

```
helm upgrade provider-<name> pipem/provider-<name> --namespace pipem -i
```

for example

```
helm upgrade provider-google pipem/provider-google --namespace pipem -i
helm upgrade provider-github pipem/provider-github --namespace pipem -i
helm upgrade provider-gitlab pipem/provider-gitlab --namespace pipem -i
```
