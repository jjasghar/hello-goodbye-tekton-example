# hello-goodbye tekton example

## Scope

This is a simple example for `tekton`, running on `kind`.

## Run

```shell
kind create cluster
kubectl cluster-info --context kind-kind
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml
tekton/
kubectl apply -f hello-world-task.yaml
kubectl create -f hello-world-taskRun.yaml
kubectl apply -f goodye-world-task.yaml
kubectl create -f goodbye-world-taskRun.yaml
tkn pipelinerun logs --last
bash check.sh
kind delete cluster
```

## License & Authors

If you would like to see the detailed LICENCE click [here](./LICENCE).

- Author: JJ Asghar <awesome@ibm.com>

```text
Copyright:: 2020- IBM, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
