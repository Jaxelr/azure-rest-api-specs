# DataBoxEdge

> see https://aka.ms/autorest

This is the AutoRest configuration file for DataBox.

---

## Getting Started

To build the SDK for DataBox Edge, simply [Install AutoRest](https://aka.ms/autorest/install) and in this folder, run:

> `autorest`

To see additional help and options, run:

> `autorest --help`

---

## Configuration

### Basic Information

These are the global settings for the DataBox Edge API.

``` yaml
openapi-type: arm
tag: package-2023-12-01
```

### Tag: package-2023-12-01

These settings apply only when `--tag=package-2023-12-01` is specified on the command line.

```yaml $(tag) == 'package-2023-12-01'
input-file:
  - Microsoft.DataBoxEdge/stable/2023-12-01/databoxedge.json
```
### Tag: package-2023-07

These settings apply only when `--tag=package-2023-07` is specified on the command line.

```yaml $(tag) == 'package-2023-07'
input-file:
  - Microsoft.DataBoxEdge/stable/2023-07-01/databoxedge.json
```
### Tag: package-2023-01-01-preview

These settings apply only when `--tag=package-2023-01-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2023-01-01-preview'
input-file:
- Microsoft.DataBoxEdge/preview/2023-01-01-preview/databoxedge.json
```

### Tag: package-2022-12-01-preview

These settings apply only when `--tag=package-2022-12-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2022-12-01-preview'
input-file:
- Microsoft.DataBoxEdge/preview/2022-12-01-preview/databoxedge.json
```

### Tag: package-2022-04-01-preview

These settings apply only when `--tag=package-2022-04-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2022-04-01-preview'
input-file:
- Microsoft.DataBoxEdge/preview/2022-04-01-preview/databoxedge.json
```

### Tag: package-2022-03-01

These settings apply only when `--tag=package-2022-03-01` is specified on the command line.

``` yaml $(tag) == 'package-2022-03-01'
input-file:
- Microsoft.DataBoxEdge/stable/2022-03-01/databoxedge.json
```

### Tag: package-2021-06-01

These settings apply only when `--tag=package-2021-06-01` is specified on the command line.

``` yaml $(tag) == 'package-2021-06-01'
input-file:
- Microsoft.DataBoxEdge/stable/2021-06-01/databoxedge.json
```

### Tag: package-2021-06-01-preview

These settings apply only when `--tag=package-2021-06-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2021-06-01-preview'
input-file:
- Microsoft.DataBoxEdge/preview/2021-06-01-preview/databoxedge.json
```

### Tag: package-2021-02-01

These settings apply only when `--tag=package-2021-02-01` is specified on the command line.

``` yaml $(tag) == 'package-2021-02-01'
input-file:
- Microsoft.DataBoxEdge/stable/2021-02-01/databoxedge.json
```

### Tag: package-2021-02-01-preview

These settings apply only when `--tag=package-2021-02-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2021-02-01-preview'
input-file:
- Microsoft.DataBoxEdge/preview/2021-02-01-preview/databoxedge.json
```

### Tag: package-2020-12-01

These settings apply only when `--tag=package-2020-12-01` is specified on the command line.

``` yaml $(tag) == 'package-2020-12-01'
input-file:
- Microsoft.DataBoxEdge/stable/2020-12-01/databoxedge.json
```

### Tag: package-2020-09-01-preview

These settings apply only when `--tag=package-2020-09-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2020-09-01-preview'
input-file:
- Microsoft.DataBoxEdge/preview/2020-09-01-preview/databoxedge.json
```

### Tag: package-2020-09-01

These settings apply only when `--tag=package-2020-09-01` is specified on the command line.

``` yaml $(tag) == 'package-2020-09-01'
input-file:
- Microsoft.DataBoxEdge/stable/2020-09-01/databoxedge.json
```

### Tag: package-2020-05-preview

These settings apply only when `--tag=package-2020-05-preview` is specified on the command line.

``` yaml $(tag) == 'package-2020-05-preview'
input-file:
- Microsoft.DataBoxEdge/preview/2020-05-01-preview/databoxedge.json
```

### Tag: package-2019-08

These settings apply only when `--tag=package-2019-08` is specified on the command line.

``` yaml $(tag) == 'package-2019-08'
input-file:
- Microsoft.DataBoxEdge/stable/2019-08-01/databoxedge.json
```

### Tag: package-2019-07

These settings apply only when `--tag=package-2019-07` is specified on the command line.

``` yaml $(tag) == 'package-2019-07'
input-file:
- Microsoft.DataBoxEdge/stable/2019-07-01/databoxedge.json
```

### Tag: package-2019-03

These settings apply only when `--tag=package-2019-03` is specified on the command line.

``` yaml $(tag) == 'package-2019-03'
input-file:
- Microsoft.DataBoxEdge/stable/2019-03-01/databoxedge.json
```

### Tag: profile-hybrid-2020-09-01

These settings apply only when `--tag=profile-hybrid-2020-09-01` is specified on the command line.

``` yaml $(tag) == 'profile-hybrid-2020-09-01'
input-file:
- Microsoft.DataBoxEdge/stable/2019-08-01/databoxedge.json
```

---

# Code Generation

## Swagger to SDK

This section describes what SDK should be generated by the automatic system.
This is not used by Autorest itself.

``` yaml $(swagger-to-sdk)
swagger-to-sdk:
  - repo: azure-sdk-for-net
  - repo: azure-sdk-for-python
  - repo: azure-sdk-for-js
  - repo: azure-sdk-for-go
  - repo: azure-sdk-for-java
  - repo: azure-sdk-for-ruby
    after_scripts:
      - bundle install && rake arm:regen_all_profiles['azure_mgmt_databoxedge']
  - repo: azure-cli-extensions
  - repo: azure-resource-manager-schemas
  - repo: azure-powershell
```

## Python

See configuration in [readme.python.md](./readme.python.md)

## Ruby

See configuration in [readme.ruby.md](./readme.ruby.md)

## Go

See configuration in [readme.go.md](./readme.go.md)

## Java

See configuration in [readme.java.md](./readme.java.md)
