# Lecciones aprendidas
## locals
Creo que el gran desafío fue trabajar con el paso 4 del ejercicio `Crear los ítems utilizando aws_dynamodb_table_item y for_each.` si bien es cierto que en ejercicios anteriores ya había trabajado con `for_each`, en esta ocasión me complicó bastante el definir la variable del tipo objeto que contenga un objeto.
Debido al tiempo que estaba invirtiendo decidí apoyarme por IA en [este chat](https://chatgpt.com/share/682a48c1-4670-800f-9b91-f57d4e951063) para finalmente poder llegar a la solución.
En resumen.
### Tipos de valores que podemos utilizar en locals.
Básicamente todos los que existen.
#### Primitivos
[Documentación](https://developer.hashicorp.com/terraform/language/expressions/type-constraints)
Un punto interesante es que Terraform puede convertir numeros o booleanos a strings o viceversa según la necesidad
##### Numeros (number)
```hcl
locals {
  number = 16
}
```
##### Caracteres (strings)
```hcl
locals {
  string = "Este es el valor de locals.string"
}
```
##### Booleanos 
```hcl
locals {
  bool = true
}
```
#### Agrupaciones
##### lista
Para tener en consideración, **no es posible** mezclar distintos tipos de valores en una lista, si la lista es numérica, todos sus valores deben ser numerícos 
```hcl
locals {
  lista_numeros = [1,2,3,4,5]
}
```
##### tuplas
Un conjunto ordenado de elementos que permite utilizar distintos tipos de valores
```hcl
locals {
  lista_tupla = ["String",2,true]
}
```
##### set
Un conjunto de valores **no duplicados**
```hcl
locals {
  lista_set = toset([1,2,3,4,5])
}
```
##### mapa
A diferencia de las listas, en los mapas si es posible mezclar distintos tipos de valores, funciona muy similar a un diccionario en los lenguajes de programación utilizando pares llaves valor, para separarlos podemos utilizar `:` o `=` sin incovenientes 

```hcl
locals {
  mi_mapa = {
    key1   = "valor de key1",
    key2 = "valor de key2"
  }
}
```

##### objeto
El objeto es muy similar al mapa, la diferencia radica en que en el mapa solo podemos utilizar **strings** como valores, en el objeto podemos utilizar lo que deseemos
```hcl
locals {
  mi_objeto = {
    key    = 1,
    nombre = "Ana",
    hijos  = ["Alberto","Antonio","Andrea],
    alive  = true
  }
}
```
