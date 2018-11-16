# Basic Helm repository

## Commands to use
`helm create foo`

`helm package foo`

`mv foo-*.tgz charts`

`helm repo index charts --url https://raw.githubusercontent.com/depauna/charts/master/`

Then push.

 ## To use in Helm
 `helm repo add <custom name> https://raw.githubusercontent.com/depauna/charts/master/index.yaml`
 
 `helm repo update`
