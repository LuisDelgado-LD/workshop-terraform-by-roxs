locals {
  #data = [{ "id" : { "S" : "001" }, "name" : { "S" : "Ada" }, "score" : { "N" : "95" } }, { "id" : { "S" : "002" }, "name" : { "S" : "Linus" }, "score" : { "N" : "89" } }]
  data = ["{ id : { S : 001 }, name : { S : Ada }, score : { N : 95 } }",
  "{ id : { S : 002 }, name : { S : Linus }, score : { N : 89 } }"]
  data2 = { fila1 = { "id" : { "S" : "001" }, "name" : { "S" : "Ada" }, "score" : { "N" : "95" } }, fila2 = { "id" : { "S" : "002" }, "name" : { "S" : "Linus" }, "score" : { "N" : "89" } } }
}
