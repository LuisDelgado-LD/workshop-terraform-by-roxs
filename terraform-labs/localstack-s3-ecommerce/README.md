# Lecciones aprendidas
## La configuración del perfil de AWS
Uno de los primeros desafíos fue configurar correctamente la CLI de AWS para que utilizara los recursos de LocalStack, sobre todo en mi caso, que instalé LocalStack en una máquina remota.
A pesar de que sabía que se pueden crear perfiles en `~/.aws/config` desconocía el hecho de que tenía que colocar "profile" dentro de los corchetes separando por un espacio y luego el nombre del perfil de esta forma `[profile xxxx]` y en el archivo `~/.aws/credentials` solo el nombre del perfil.


## Funciones, específicamente `fileset`
Mientras buscaba una solución al último paso del ejercicio, encontré la función [`fileset`](https://developer.hashicorp.com/terraform/language/functions/fileset), a pesar de que ya tenía una solución con la variable `listado-de-archivos`, decidí probarla y me gustó el resultado, aunque tuve problemas para determinar la sintaxis lo que me permitió probar distintas combinaciones para ver la salida que obtenía utilizando 

```bash
terraform plan
```

## El uso de `for_each`
Ya en el ejercicio anterior tuve la oportunidad de trabajar con el `%{if}%{else}%{endif}` y durante esa investigación conocí el [`for_each`](https://developer.hashicorp.com/terraform/language/meta-arguments/for_each) no lo utilicé y en este ejercicio fue obligatorio utilizarlo. Además pude trabajar con el map en las variables

## El uso de `map` en las variables
Como comenté antes, para el `for_each` invoqué el valor por defecto de una variable, y esta la manipulé tanto con `map` y `set`.
Una página que me ayudó a entender estos conceptos fue [este artículo](https://spacelift.io/blog/terraform-for-each)

##  Los mime-type
En el ejercicio se solicitaba utilizar el argumento `content_type` de `aws_s3_object`, si bien es cierto conozco los mime-type y los he utilizado en algún contexto (sobre todo cuando tuve que trabajar con APIs durante el curso de fullstack), ahora tuve dudas respecto a los distintos nombres utilizados, gracias a [MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/MIME_types/Common_types) pude encontrar los recursos que necesitaba

## Es mejor utilizar _ en vez de -
Al declarar las variables me percaté que, al menos en el editor que utilizo (gedit) al crear una variable utilizando - y hacer doble click solo selecciona parte del texto, si utilizo "_" selecciona el nombre completo

