# Lecciones aprendidas
## Respecto a la jerarquia
Si bien conocía Terraform por un curso de full stack que incluía asignaturas de infraestructura y algo había leido acerca de la jerarquia, es primera vez que la aplico.
Considero una forma de trabajar interesante ya que gracias a esta organización no se necesitar estar buscando "en vertical" o sea dentro del mismo archivo, y se pasa a buscar el archivo que suele ser más pequeño gracias a esta segmentación

## Respecto a los bloques
Si bien en el curso trabajamos con los bloques del tipo recurso, no construimos bloques de variable u output, por lo que esta fue una buena instancia para practicar este tipo de bloques, a continuación detallo los desafíos y problemas que tuve

### Variables
Si bien durante el curso tuve que trabajar con un archivo y modificar variables, no había tenido la oportunidad de crear variables desde 0 y asignarles valor, creo que esta última parte fue la más difícil ya que cometí el error de declararlas directamente en el archivo terraform.tfvars como bloque siendo que el bloque se declara en variables.tf y en el archivo terraform.tfvars solo se asignan los valores a las variables creadas en variables.tf (información)[https://developer.hashicorp.com/terraform/language/style#file-names]
Otro error que cometí en este aspecto fue utilizar puntos "." en vez de guión bajo "_", o guión "-" (fuente)[https://developer.hashicorp.com/terraform/language/syntax/configuration#identifiers]

### Provider
Un problema que tuve con el provider sugerido por la expositora fue la versión, utilizando la versión 3.5.0 liberada hace 9 días, encontré un posible bug que impedia asignar tags y nombre a la imagen y otro relacionado a la creación del contenedor.
Para intentar solucionar el primer error lo que hice fue tomar el id de la imagen generada en el recurso docker_image y definirlo en la imagen del contenedor, sin embargo aparecé el segundo error relacionado a un flag faltante "--mount".
La solución fue bajar a la versión 3.4.0 

### Output
Creo que esta parte fue la más desafiante para mi, mostrar la url no fue difícil sin embargo a pesar de mucha lectura no encontré forma de mostrar el estado de ejecución como lo pensaba, al estilo 
```bash
docker -ps --format '{{ .State }}'
```
Termine recurriendo a un recurso nuevo con el cual nunca había trabajado antes, los (if)[https://developer.hashicorp.com/terraform/language/expressions/strings#directives]
