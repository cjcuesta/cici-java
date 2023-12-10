# cici-java

## Configuración
* Se debe instalar argocd de acuerdo a lo visto en clase 
* Se debe instalar circleci de acuerdo a lo visto en clase
* Se debe configurar el repositorio en circleci de acuerdo a lo visto en clase
* Se deben hacer las siguientes configuraciones

Se crean estas variables para publicar a Docker Hub la imagen y también para poder conectarnos a Gitlab.

![](imagenes/variables.png)

Se habilitan la ORBS de terceros 

![](imagenes/orbs.png)


Se crea el contexto de SonarCloud
![](imagenes/SonarContexto.png)

Se adiona el token de SonarCloud
![](imagenes/SonarContextoVariables.png)

SSH Key Gitlab Se debe crear con el comando 
```
ssh-keygen -t rsa -b 4096 -C "CircleCI Deploy Key with Write Access" -f /tmp/ssh-temp/key
 ls -l /tmp/ssh-temp/
 head -n 1 /tmp/ssh-temp/key
 cat /tmp/ssh-temp/key.pub 
 cat /tmp/ssh-temp/key
 
```
Se adiciona al proyecto en gitlab la publica.
Se adiciona al proyecto en Circleci la privada
![](imagenes/SSHKey.png)

Se coloca en el archivo .cicleci/config.yml el fingerprint para que pueda guardar en gitlab los cambios desde circleci
![](imagenes/fingerprint.png)



* Enlace a videos: [videos](https://drive.google.com/drive/folders/1w1wTkQCnmz5Tn2vzvpUnhsdk2fJH0w_t?usp=sharing)

Se debe descargar el repositorio
```
git clone git@github.com:cjcuesta/cici-java.git
```
Se realiza un cambio en el respositorio y luego se observa en circleci

```
circleci config validate .circleci/config.yml && \
git pull && \
git add . && \
git commit -m "Modificacion deployment 28" && \
git push && \
git tag v0.0.28 && \
git push --tag

```

