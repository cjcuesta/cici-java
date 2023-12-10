# cici-java

## Configuración
* Se debe instalar argocd de acuerdo a lo visto en clase 
* Se debe instalar circleci de acuerdo a lo visto en clase
* Se deben hacer las siguientes configuraciones


![](imagenes/variables.png)

![](imagenes/orbs.png)

![](imagenes/SonarContexto.png)

![](imagenes/SonarContextoVariables.png)

![](imagenes/SSHKey.png)

![](imagenes/fingerprint.png)

Se debe descargar el repositorio
```
git clone git@github.com:cjcuesta/cici-java.git
```
Se realiza un cambio en el respositorio

```
circleci config validate .circleci/config.yml && \
git pull && \
git add . && \
git commit -m "Modificacion deployment 28" && \
git push && \
git tag v0.0.28 && \
git push --tag

```

